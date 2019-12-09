.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 65
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 66
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 225
    new-instance v0, Lcom/android/server/DockObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DockObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 82
    iget-object p1, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method private handleDockStateChange()V
    .locals 10

    .line 153
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 157
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 163
    const-string v1, "DockObserver"

    const-string v2, "Device not provisioned, skipping dock broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-string v5, "android.intent.extra.DOCK_STATE"

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v5, "dock_sounds_enabled"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 174
    move v5, v6

    goto :goto_0

    .line 172
    :cond_1
    nop

    .line 174
    move v5, v4

    :goto_0
    const-string v7, "dock_sounds_enabled_when_accessbility"

    invoke-static {v2, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 176
    move v7, v6

    goto :goto_1

    .line 174
    :cond_2
    nop

    .line 176
    move v7, v4

    :goto_1
    const-string v8, "accessibility_enabled"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 181
    move v4, v6

    goto :goto_2

    .line 176
    :cond_3
    nop

    .line 181
    :goto_2
    if-nez v5, :cond_4

    if-eqz v4, :cond_b

    if-eqz v7, :cond_b

    .line 183
    :cond_4
    const/4 v4, 0x0

    .line 184
    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-nez v5, :cond_7

    .line 185
    if-eq v1, v6, :cond_6

    if-eq v1, v9, :cond_6

    if-ne v1, v8, :cond_5

    goto :goto_3

    .line 189
    :cond_5
    if-ne v1, v7, :cond_a

    .line 190
    const-string v4, "car_undock_sound"

    goto :goto_5

    .line 188
    :cond_6
    :goto_3
    const-string v4, "desk_undock_sound"

    goto :goto_5

    .line 193
    :cond_7
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v1, v6, :cond_9

    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v1, v9, :cond_9

    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v1, v8, :cond_8

    goto :goto_4

    .line 197
    :cond_8
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v1, v7, :cond_a

    .line 198
    const-string v4, "car_dock_sound"

    goto :goto_5

    .line 196
    :cond_9
    :goto_4
    const-string v4, "desk_dock_sound"

    .line 202
    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    .line 203
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_b

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_b

    .line 207
    nop

    .line 208
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 207
    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_b

    .line 210
    invoke-virtual {v1, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 211
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 221
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/16 v1, 0x400

    :try_start_0
    new-array v2, v1, [C

    .line 108
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 111
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 112
    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 115
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    :try_start_3
    const-string v2, "DockObserver"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    .line 117
    const-string v1, "DockObserver"

    const-string v2, "This kernel does not have dock station support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    nop

    .line 121
    :goto_1
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private setActualDockStateLocked(I)V
    .locals 1

    .line 125
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private setDockStateLocked(I)V
    .locals 3

    .line 132
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2

    .line 133
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 134
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz p1, :cond_2

    .line 136
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "theater_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "android.server:DOCK"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 145
    :cond_2
    return-void
.end method

.method private updateLocked()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 92
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 97
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 100
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 87
    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
