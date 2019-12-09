.class public Lcom/android/server/am/OnePlusTemperatureMonitor;
.super Ljava/lang/Object;
.source "OnePlusTemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.optm.action.test"

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field public static final BATTERY_THERM:Ljava/lang/String; = "/sys/class/power_supply/battery/temp"

.field public static DEBUG:Z = false

.field public static ENABLE:Z = false

.field public static EPoint:Ljava/lang/String; = null

.field public static HPoint:Ljava/lang/String; = null

.field public static MDM:Z = false

.field public static final MSM_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone66/temp"

.field public static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.optm.debug"

.field public static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.optm.enable"

.field public static final PROP_MDM:Ljava/lang/String; = "persist.sys.optm.mdm"

.field public static SPoint:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "OPTM"

.field public static final TRACK_TAG:Ljava/lang/String; = "OPTM"

.field private static instance:Lcom/android/server/am/OnePlusTemperatureMonitor;


# instance fields
.field private antutuTesting:Z

.field private mContext:Landroid/content/Context;

.field private mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private monitorRunnable:Ljava/lang/Runnable;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    .line 52
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    .line 53
    sput-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->MDM:Z

    .line 60
    const-string v0, "com.antutu.benchmark.ui.test.activity.RefineryActivity"

    sput-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->SPoint:Ljava/lang/String;

    .line 61
    const-string v0, "com.antutu.benchmark.ui.test.activity.ActivityTestResultDetails"

    sput-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->EPoint:Ljava/lang/String;

    .line 62
    const-string v0, "com.antutu.benchmark.ui.home.activity.ActivityMain"

    sput-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->HPoint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    .line 64
    new-instance v1, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    invoke-direct {v1}, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    .line 222
    new-instance v1, Lcom/android/server/am/OnePlusTemperatureMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusTemperatureMonitor$1;-><init>(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mTestReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->running:Z

    .line 264
    new-instance v0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusTemperatureMonitor$2;-><init>(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->monitorRunnable:Ljava/lang/Runnable;

    .line 79
    const-string/jumbo v0, "persist.sys.optm.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    .line 80
    const-string/jumbo v0, "persist.sys.optm.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    .line 81
    const-string/jumbo v0, "persist.sys.optm.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->MDM:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusTemperatureMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->dump()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->monitor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusTemperatureMonitor;)Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusTemperatureMonitor;Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusTemperatureMonitor;->trackReportData(Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusTemperatureMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->running:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->readCpuTemperature(Z)Z

    move-result v0

    return v0
.end method

.method private dump()V
    .registers 4

    .line 132
    const-string v0, "OPTM"

    const-string v1, "=========== dump ========="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "OPTM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " antutuTesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "OPTM"

    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/OnePlusTemperatureMonitor;
    .registers 1

    .line 72
    sget-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->instance:Lcom/android/server/am/OnePlusTemperatureMonitor;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->instance:Lcom/android/server/am/OnePlusTemperatureMonitor;

    .line 75
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->instance:Lcom/android/server/am/OnePlusTemperatureMonitor;

    return-object v0
.end method

.method private monitor(Z)V
    .registers 4
    .param p1, "on"    # Z

    .line 280
    if-eqz p1, :cond_10

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->running:Z

    .line 282
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->monitorRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_13

    .line 284
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->running:Z

    .line 285
    :goto_13
    return-void
.end method

.method private readCpuTemperature(Z)Z
    .registers 7
    .param p1, "startTest"    # Z

    .line 115
    const-string v0, "/sys/class/thermal/thermal_zone66/temp"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "cpuTemp":Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "batteryTemp":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_29

    .line 119
    :try_start_f
    iget-object v3, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    if-nez v0, :cond_15

    move v4, v2

    goto :goto_19

    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_19
    iput v4, v3, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfCpu:I

    .line 120
    iget-object v3, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    if-nez v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_24
    iput v2, v3, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfBattery:I

    goto :goto_40

    .line 125
    :catch_27
    move-exception v2

    goto :goto_41

    .line 122
    :cond_29
    iget-object v3, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    if-nez v0, :cond_2f

    move v4, v2

    goto :goto_33

    :cond_2f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_33
    iput v4, v3, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfCpu:I

    .line 123
    iget-object v3, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    if-nez v1, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_3e
    iput v2, v3, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfBattery:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_27

    .line 127
    :goto_40
    goto :goto_4b

    .line 125
    :goto_41
    nop

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPTM"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    const/4 v2, 0x1

    return v2
.end method

.method private readNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 141
    .local v1, "value":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "readFile":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 143
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_24
    .catchall {:try_start_2 .. :try_end_16} :catchall_22

    move-object v1, v3

    .line 148
    .end local v2    # "readFile":Ljava/io/File;
    nop

    .line 149
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_21

    .line 151
    :catch_1c
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2e

    .line 153
    :cond_21
    :goto_21
    goto :goto_2e

    .line 147
    :catchall_22
    move-exception v2

    goto :goto_2f

    .line 144
    :catch_24
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_21

    .line 149
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_1c

    goto :goto_21

    .line 155
    :goto_2e
    return-object v1

    .line 147
    :goto_2f
    nop

    .line 148
    if-eqz v0, :cond_3b

    .line 149
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3b

    .line 151
    :catch_36
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 153
    :cond_3b
    :goto_3b
    throw v2
.end method

.method private registerTestReceiver()V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 253
    const-string v0, "OPTM"

    const-string v1, "Fatal Exception # registerTestReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 257
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 259
    const-string v1, "com.optm.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method private trackReportData(Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ri"    # Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    .line 202
    sget-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->MDM:Z

    if-eqz v0, :cond_71

    if-nez p2, :cond_7

    goto :goto_71

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_14

    .line 204
    const-string v0, "OPTM"

    const-string/jumbo v1, "mTracker is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 208
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->toMDM()Ljava/util/Map;

    move-result-object v0

    .line 209
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 210
    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    if-eqz v1, :cond_6b

    .line 211
    const-string v1, "OPTM"

    const-string/jumbo v2, "trackReportData APPID = NYNCG4I0TI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "key":Ljava/lang/String;
    const-string v3, "OPTM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackReportData ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_34

    .line 216
    :cond_6b
    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-virtual {v1, p1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    :cond_70
    return-void

    .line 202
    .end local v0    # "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method public initEnv(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    sget-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->registerTestReceiver()V

    .line 88
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mContext:Landroid/content/Context;

    const-string v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 89
    return-void
.end method

.method public startAntutuMonitor(Ljava/lang/String;)Z
    .registers 5
    .param p1, "activityName"    # Ljava/lang/String;

    .line 92
    sget-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    if-nez p1, :cond_8

    goto :goto_50

    .line 93
    :cond_8
    sget-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->SPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    if-nez v0, :cond_18

    .line 94
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    goto :goto_26

    .line 95
    :cond_18
    sget-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->EPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    if-eqz v0, :cond_3a

    .line 96
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    .line 105
    :goto_26
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->readCpuTemperature(Z)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    if-nez v0, :cond_39

    .line 106
    const-string v0, "OPTM"

    iget-object v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->trackReportData(Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V

    .line 108
    :cond_39
    return v2

    .line 97
    :cond_3a
    const-string v0, "antutu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 98
    sget-object v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->HPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 99
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    .line 100
    :cond_4c
    return v1

    .line 102
    :cond_4d
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor;->antutuTesting:Z

    .line 103
    return v1

    .line 92
    :cond_50
    :goto_50
    return v1
.end method
