.class public final Lcom/android/server/audio/AudioMonitor;
.super Ljava/lang/Object;
.source "AudioMonitor.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final AdCn:Ljava/lang/String; = "audio_connect"

.field private static final AlSd:Ljava/lang/String; = "alert_slider"

.field private static final TAG:Ljava/lang/String; = "AudioMonitor"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHsTime:J

.field private mIsTypec:Z

.field private mMusicPlayingStarting:J

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioMonitor;Lcom/android/server/audio/AudioMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioMonitor;->mRingerMode:I

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mStartTime:J

    .line 42
    iput-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mHsTime:J

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/AudioMonitor;->mIsTypec:Z

    .line 44
    iput-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    const-string v2, "RBS8PPYT2W"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget v0, p0, Lcom/android/server/audio/AudioMonitor;->mRingerMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/android/server/audio/AudioMonitor;->mRingerMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioMonitor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/audio/AudioMonitor;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Lcom/android/server/audio/AudioMonitor;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioMonitor;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioMonitor;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/audio/AudioMonitor;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 30
    iput-object p1, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/audio/AudioMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/android/server/audio/AudioMonitor;->mIsTypec:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioMonitor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/audio/AudioMonitor;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioMonitor;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioMonitor;JI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioMonitor;->setMdmEvent(JI)V

    return-void
.end method

.method private convertDevice2MdmType(I)I
    .registers 3
    .param p1, "device"    # I

    .line 156
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 157
    const/4 v0, 0x5

    return v0

    .line 158
    :cond_5
    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 160
    :cond_d
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_13

    .line 161
    const/4 v0, 0x3

    return v0

    .line 163
    :cond_13
    const/4 v0, -0x1

    return v0

    .line 159
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method private convertRingerMode2AlertSlider(I)I
    .registers 3
    .param p1, "m"    # I

    .line 167
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private setMdmEvent(JI)V
    .registers 9
    .param p1, "lapse"    # J
    .param p3, "device"    # I

    .line 91
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioMonitor;->convertDevice2MdmType(I)I

    move-result v0

    .line 92
    .local v0, "mdmDevice":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 93
    return-void

    .line 95
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v2, "use_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v2, :cond_30

    .line 99
    new-instance v2, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    const-string v4, "RBS8PPYT2W"

    invoke-direct {v2, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 101
    :cond_30
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v3, "audio_connect"

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    const-string v2, "AudioMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM, playing,device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lapse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method private wasStreamActiveRecently(II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "delay_ms"    # I

    .line 151
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 152
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 151
    :goto_10
    return v0
.end method


# virtual methods
.method public onAlarm()V
    .registers 16

    .line 68
    const-string v0, "AudioMonitor"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 70
    .local v0, "current":J
    iget-wide v2, p0, Lcom/android/server/audio/AudioMonitor;->mStartTime:J

    sub-long v2, v0, v2

    .line 71
    .local v2, "lapse":J
    const-wide/16 v4, 0x3c

    cmp-long v4, v2, v4

    if-lez v4, :cond_6e

    .line 72
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v4, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "switch_status"

    iget v6, p0, Lcom/android/server/audio/AudioMonitor;->mRingerMode:I

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v5, "use_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v5, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v5, :cond_47

    .line 76
    new-instance v5, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    const-string v7, "RBS8PPYT2W"

    invoke-direct {v5, v6, v7}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 78
    :cond_47
    iget-object v5, p0, Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v6, "alert_slider"

    invoke-virtual {v5, v6, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    const-string v5, "AudioMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/audio/AudioMonitor;->mRingerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lapse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v4    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6e
    iput-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mStartTime:J

    .line 83
    iget-object v4, p0, Lcom/android/server/audio/AudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v4, :cond_b5

    .line 84
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v4

    sget-object v5, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 85
    .local v4, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v13

    .line 86
    .local v13, "millis":J
    const-string v5, "AudioMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x1

    const-string v10, "AudioMonitor"

    const/4 v12, 0x0

    move-wide v8, v13

    move-object v11, p0

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 89
    .end local v4    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v13    # "millis":J
    :cond_b5
    return-void
.end method

.method public playerEvent(IIII)V
    .registers 14
    .param p1, "piid"    # I
    .param p2, "streamType"    # I
    .param p3, "event"    # I
    .param p4, "device"    # I

    .line 113
    const-wide/16 v0, 0x3e8

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    if-ne p3, v7, :cond_40

    .line 114
    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_15

    .line 115
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 117
    :cond_15
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 118
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2a
    iget-wide v2, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_37

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    .line 121
    :cond_37
    const-string v0, "AudioMonitor"

    const-string v1, "MDM,start. "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ec

    .line 122
    :cond_40
    if-eq p3, v4, :cond_45

    const/4 v7, 0x4

    if-ne p3, v7, :cond_ec

    .line 124
    :cond_45
    const-string v7, "AudioMonitor"

    const-string v8, "MDM,stop. "

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_61

    .line 126
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iput-wide v5, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    .line 128
    const-string v0, "AudioMonitor"

    const-string v1, "MDM,stop. clear"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_61
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 132
    .local v3, "index":I
    if-eq v3, v2, :cond_7c

    .line 133
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    :cond_7c
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_ec

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v0

    iget-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    sub-long/2addr v7, v0

    .line 137
    .local v7, "lapse":J
    const-wide/16 v0, 0x5

    cmp-long v0, v7, v0

    if-lez v0, :cond_cc

    iget-wide v0, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_cc

    const-wide/32 v0, 0x15180

    cmp-long v0, v7, v0

    if-gez v0, :cond_cc

    .line 138
    iget-boolean v0, p0, Lcom/android/server/audio/AudioMonitor;->mIsTypec:Z

    if-eqz v0, :cond_a5

    .line 139
    const/high16 p4, 0x4000000

    .line 140
    :cond_a5
    invoke-direct {p0, v7, v8, p4}, Lcom/android/server/audio/AudioMonitor;->setMdmEvent(JI)V

    .line 141
    const-string v0, "AudioMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDM,device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lapse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_ea

    .line 144
    :cond_cc
    const-string v0, "AudioMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDM,ignore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lapse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_ea
    iput-wide v5, p0, Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J

    .line 149
    .end local v3    # "index":I
    .end local v7    # "lapse":J
    :cond_ec
    :goto_ec
    return-void
.end method

.method public systemReady()V
    .registers 12

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 59
    iget-object v0, p0, Lcom/android/server/audio/AudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_51

    .line 60
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 61
    .local v0, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 62
    .local v9, "millis":J
    const-string v1, "AudioMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "AudioMonitor"

    const/4 v8, 0x0

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 65
    .end local v0    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v9    # "millis":J
    :cond_51
    return-void
.end method
