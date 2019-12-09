.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# static fields
.field private static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field private static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 2

    .line 51
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 53
    return-void
.end method

.method public static start()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/server/BinderCallsStatsService;

    invoke-direct {v0}, Lcom/android/server/BinderCallsStatsService;-><init>()V

    .line 38
    const-string v1, "binder_calls_stats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Enabled CPU usage tracking for binder calls. Controlled by persist.sys.binder_calls_detailed_tracking or via dumpsys binder_calls_stats --enable-detailed-tracking"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 57
    if-eqz p3, :cond_5

    .line 58
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_5

    aget-object v2, p3, v1

    .line 59
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    goto/16 :goto_1

    .line 62
    :cond_0
    const-string v3, "--reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 64
    const-string p1, "binder_calls_stats reset."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    return-void

    .line 66
    :cond_1
    const-string v3, "--enable-detailed-tracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-string/jumbo p1, "persist.sys.binder_calls_detailed_tracking"

    const-string p3, "1"

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 69
    const-string p1, "Detailed tracking enabled"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    return-void

    .line 71
    :cond_2
    const-string v3, "--disable-detailed-tracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string/jumbo p1, "persist.sys.binder_calls_detailed_tracking"

    const-string p3, ""

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 74
    const-string p1, "Detailed tracking disabled"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return-void

    .line 76
    :cond_3
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const-string p1, "binder_calls_stats commands:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string p1, "  --reset: Reset stats"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string p1, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string p1, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void

    .line 83
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 87
    :cond_5
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;)V

    .line 88
    return-void
.end method
