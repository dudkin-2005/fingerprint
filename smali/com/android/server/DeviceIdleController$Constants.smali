.class final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field private static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field private static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field private static final KEY_LIGHT_PRE_IDLE_TIMEOUT:Ljava/lang/String; = "light_pre_idle_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field private static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_NOTIFICATION_WHITELIST_DURATION:Ljava/lang/String; = "notification_whitelist_duration"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"

.field private static final KEY_WAIT_FOR_UNLOCK:Ljava/lang/String; = "wait_for_unlock"


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LIGHT_PRE_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public NOTIFICATION_WHITELIST_DURATION:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field public WAIT_FOR_UNLOCK:Z

.field private final aggressiveConstants:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSmallBatteryDevice:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 861
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 828
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 831
    new-instance p1, Lcom/android/server/DeviceIdleController$Constants$1;

    invoke-direct {p1, p0}, Lcom/android/server/DeviceIdleController$Constants$1;-><init>(Lcom/android/server/DeviceIdleController$Constants;)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->aggressiveConstants:Ljava/util/WeakHashMap;

    .line 862
    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 863
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 864
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "device_idle_constants"

    .line 865
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 864
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 867
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "aggressive_idle_enabled"

    .line 868
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 867
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 870
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 871
    return-void
.end method

.method private getDurationWeighted(Ljava/lang/String;J)J
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$Constants;->aggressiveConstants:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    .line 883
    return-wide p1
.end method

.method private updateConstants()V
    .locals 17

    .line 887
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 889
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "device_idle_constants"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 893
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "aggressive_idle_enabled"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v0, v5}, Lcom/android/server/DeviceIdleController;->access$1202(Lcom/android/server/DeviceIdleController;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    goto :goto_1

    .line 965
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 895
    :catch_0
    move-exception v0

    .line 898
    :try_start_1
    const-string v4, "DeviceIdleController"

    const-string v5, "Bad device idle settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, v3}, Lcom/android/server/DeviceIdleController;->access$1202(Lcom/android/server/DeviceIdleController;Z)Z

    .line 904
    :goto_1
    const-string v0, "light_after_inactive_to"

    const-wide/32 v3, 0x2bf20

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 907
    const-string v0, "light_pre_idle_to"

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    .line 909
    const-string v0, "light_idle_to"

    const-wide/32 v3, 0x493e0

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 911
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "light_idle_factor"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 913
    const-string v0, "light_max_idle_to"

    const-wide/32 v7, 0xdbba0

    invoke-direct {v1, v0, v7, v8}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 915
    const-string v0, "light_idle_maintenance_min_budget"

    const-wide/32 v7, 0xea60

    invoke-direct {v1, v0, v7, v8}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 918
    const-string v0, "light_idle_maintenance_max_budget"

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 921
    const-string v0, "min_light_maintenance_time"

    const-wide/16 v9, 0x1388

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 924
    const-string v0, "min_deep_maintenance_time"

    const-wide/16 v9, 0x7530

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 927
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    const/16 v5, 0x1e

    const/16 v11, 0xf

    if-eqz v0, :cond_1

    move v0, v11

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_2
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 928
    const-string v0, "inactive_to"

    invoke-direct {v1, v0, v12, v13}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 930
    const-string/jumbo v0, "sensing_to"

    const-wide/32 v12, 0x3a980

    invoke-direct {v1, v0, v12, v13}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 932
    const-string v0, "locating_to"

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 934
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v12, "location_accuracy"

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v0, v12, v13}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 935
    const-string v0, "motion_inactive_to"

    const-wide/32 v12, 0x927c0

    invoke-direct {v1, v0, v12, v13}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 937
    iget-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_2

    move v5, v11

    nop

    :cond_2
    mul-int/lit8 v5, v5, 0x3c

    int-to-long v9, v5

    mul-long/2addr v9, v14

    .line 938
    const-string v0, "idle_after_inactive_to"

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 942
    const-string v0, "idle_pending_to"

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 944
    const-string v0, "max_idle_pending_to"

    invoke-direct {v1, v0, v12, v13}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 946
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "idle_pending_factor"

    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 948
    const-string v0, "idle_to"

    const-wide/32 v9, 0x36ee80

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 950
    const-string v0, "max_idle_to"

    const-wide/32 v11, 0x1499700

    invoke-direct {v1, v0, v11, v12}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 952
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "idle_factor"

    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 954
    const-string v0, "min_time_to_alarm"

    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 956
    const-string v0, "max_temp_app_whitelist_duration"

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    .line 958
    const-string v0, "mms_temp_app_whitelist_duration"

    invoke-direct {v1, v0, v7, v8}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .line 960
    const-string/jumbo v0, "sms_temp_app_whitelist_duration"

    const-wide/16 v3, 0x4e20

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .line 962
    const-string v0, "notification_whitelist_duration"

    const-wide/16 v3, 0x7530

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getDurationWeighted(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    .line 964
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "wait_for_unlock"

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 965
    monitor-exit v2

    .line 966
    return-void

    .line 965
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 969
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_after_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 973
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 975
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_pre_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 977
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 979
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 981
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 983
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_idle_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 985
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 987
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_max_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 989
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 991
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 993
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 995
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 997
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 999
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "min_light_maintenance_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1001
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1003
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "min_deep_maintenance_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1005
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1007
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1009
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1011
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sensing_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1013
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1015
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "locating_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1017
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1019
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "location_accuracy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1023
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "motion_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1025
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1027
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_after_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1029
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1031
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1033
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1035
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1037
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1039
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_pending_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1042
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1044
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1046
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1048
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1050
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "idle_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1053
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "min_time_to_alarm"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1055
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1057
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "max_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1059
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1061
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1063
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1065
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1067
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1069
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "notification_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1071
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1073
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "wait_for_unlock"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1075
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 875
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    .line 876
    return-void
.end method
