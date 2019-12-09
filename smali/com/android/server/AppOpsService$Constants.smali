.class final Lcom/android/server/AppOpsService$Constants;
.super Landroid/database/ContentObserver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field private static final KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field private static final KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"


# instance fields
.field public BG_STATE_SETTLE_TIME:J

.field public FG_SERVICE_STATE_SETTLE_TIME:J

.field public TOP_STATE_SETTLE_TIME:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->this$0:Lcom/android/server/AppOpsService;

    .line 268
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 264
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 269
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 270
    return-void
.end method

.method private updateConstants()V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "app_ops_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_0
    const-string v0, ""

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$Constants;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    goto :goto_1

    .line 303
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 292
    :catch_0
    move-exception v0

    .line 295
    :try_start_1
    const-string v2, "AppOps"

    const-string v3, "Bad app ops settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "top_state_settle_time"

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 299
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "fg_service_state_settle_time"

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 301
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bg_state_settle_time"

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 307
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "top_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 312
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fg_service_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 314
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 315
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 318
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 283
    return-void
.end method

.method public startMonitoring(Landroid/content/ContentResolver;)V
    .locals 2

    .line 273
    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 274
    iget-object p1, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "app_ops_constants"

    .line 275
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 278
    return-void
.end method
