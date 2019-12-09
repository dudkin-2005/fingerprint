.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 39
    const-string v0, "android.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 40
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 5

    .line 43
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 45
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    .line 46
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 47
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 48
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 52
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .locals 2

    .line 55
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 57
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 62
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 64
    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
