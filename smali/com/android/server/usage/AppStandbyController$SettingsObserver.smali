.class Lcom/android/server/usage/AppStandbyController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final AGGRESSIVE_WEIGHT:J = 0x5L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STABLE_CHARGING_THRESHOLD:J = 0x927c0L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field private static final KEY_ELAPSED_TIME_THRESHOLDS:Ljava/lang/String; = "elapsed_thresholds"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field private static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_IDLE_DURATION_OLD:Ljava/lang/String; = "idle_duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_PAROLE_WINDOW:Ljava/lang/String; = "parole_window"

.field private static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field private static final KEY_SCREEN_TIME_THRESHOLDS:Ljava/lang/String; = "screen_thresholds"

.field private static final KEY_STABLE_CHARGING_THRESHOLD:Ljava/lang/String; = "stable_charging_threshold"

.field private static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field private static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field private static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field private static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAggressiveStandby:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .locals 0

    .line 1790
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 1791
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1785
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mAggressiveStandby:Z

    .line 1788
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1792
    return-void
.end method

.method private getDurationWeighted(Ljava/lang/String;J)J
    .locals 2

    .line 1810
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    .line 1812
    iget-boolean p3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mAggressiveStandby:Z

    if-eqz p3, :cond_0

    .line 1813
    const-wide/16 v0, 0x5

    div-long/2addr p1, v0

    return-wide p1

    .line 1815
    :cond_0
    return-wide p1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 1806
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 1807
    return-void
.end method

.method parseLongArray(Ljava/lang/String;[J)[J
    .locals 4

    .line 1914
    if-nez p1, :cond_0

    return-object p2

    .line 1915
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    return-object p2

    .line 1919
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1920
    array-length v0, p1

    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v1, v1

    if-ne v0, v1, :cond_5

    .line 1921
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v0, v0

    new-array v0, v0, [J

    .line 1922
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1924
    :try_start_0
    aget-object v2, p1, v1

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1927
    :cond_2
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_2

    .line 1925
    :cond_3
    :goto_1
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    :goto_2
    nop

    .line 1922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    :catch_0
    move-exception p1

    .line 1930
    return-object p2

    .line 1933
    :cond_4
    return-object v0

    .line 1935
    :cond_5
    return-object p2
.end method

.method registerObserver()V
    .locals 3

    .line 1795
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1796
    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1797
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1799
    const-string v1, "aggressive_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1801
    return-void
.end method

.method updateSettings()V
    .locals 12

    .line 1830
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aggressive_standby_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mAggressiveStandby:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    goto :goto_1

    .line 1832
    :catch_0
    move-exception v2

    .line 1834
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mAggressiveStandby:Z

    .line 1840
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v2, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppIdleSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1844
    goto :goto_2

    .line 1841
    :catch_1
    move-exception v0

    .line 1842
    const-string v2, "AppStandbyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value for app idle settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :goto_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1849
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v3, "parole_interval"

    const-wide/32 v4, 0x5265c00

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    .line 1853
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v3, "parole_window"

    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    .line 1856
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v3, "parole_duration"

    const-wide/32 v6, 0x927c0

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    .line 1859
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "screen_thresholds"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1860
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v9, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v2, v9}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 1863
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "elapsed_thresholds"

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1865
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v8, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v2, v8}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 1867
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    aget-wide v8, v3, v1

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    const-wide/32 v10, 0xdbba00

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 1869
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "strong_usage_duration"

    const-wide/32 v8, 0x36ee80

    .line 1870
    invoke-direct {p0, v2, v8, v9}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1872
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v2, "notification_seen_duration"

    .line 1873
    const-wide/32 v8, 0x2932e00

    invoke-direct {p0, v2, v8, v9}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 1875
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "system_update_usage_duration"

    .line 1876
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 1878
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "prediction_timeout"

    .line 1879
    invoke-direct {p0, v2, v8, v9}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 1881
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "sync_adapter_duration"

    .line 1882
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 1885
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v2, "exempted_sync_scheduled_nd_duration"

    .line 1886
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 1890
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v2, "exempted_sync_scheduled_d_duration"

    .line 1891
    invoke-direct {p0, v2, v10, v11}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 1895
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v2, "exempted_sync_start_duration"

    .line 1896
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 1900
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "system_interaction_duration"

    .line 1901
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 1903
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v2, "stable_charging_threshold"

    .line 1904
    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    .line 1906
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1910
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 1911
    return-void

    .line 1906
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
