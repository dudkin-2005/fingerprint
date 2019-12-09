.class Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioMonitorBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioMonitor;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioMonitor;Lcom/android/server/audio/AudioMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioMonitor;
    .param p2, "x1"    # Lcom/android/server/audio/AudioMonitor$1;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    if-eqz v1, :cond_da

    .line 179
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "ringerMode":I
    const-string v3, "AudioMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v3}, Lcom/android/server/audio/AudioMonitor;->access$100(Lcom/android/server/audio/AudioMonitor;)I

    move-result v3

    if-ne v3, v2, :cond_45

    .line 183
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # setter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioMonitor;->access$102(Lcom/android/server/audio/AudioMonitor;I)I

    .line 184
    iget-object v2, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    # setter for: Lcom/android/server/audio/AudioMonitor;->mStartTime:J
    invoke-static {v2, v6, v7}, Lcom/android/server/audio/AudioMonitor;->access$202(Lcom/android/server/audio/AudioMonitor;J)J

    goto/16 :goto_d8

    .line 186
    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 187
    .local v2, "current":J
    iget-object v4, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mStartTime:J
    invoke-static {v4}, Lcom/android/server/audio/AudioMonitor;->access$200(Lcom/android/server/audio/AudioMonitor;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 189
    .local v4, "lapse":J
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-lez v6, :cond_ce

    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v6}, Lcom/android/server/audio/AudioMonitor;->access$100(Lcom/android/server/audio/AudioMonitor;)I

    move-result v6

    if-eq v6, v1, :cond_ce

    .line 190
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v6, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "switch_status"

    iget-object v8, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    iget-object v9, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v9}, Lcom/android/server/audio/AudioMonitor;->access$100(Lcom/android/server/audio/AudioMonitor;)I

    move-result v9

    # invokes: Lcom/android/server/audio/AudioMonitor;->convertRingerMode2AlertSlider(I)I
    invoke-static {v8, v9}, Lcom/android/server/audio/AudioMonitor;->access$300(Lcom/android/server/audio/AudioMonitor;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v7, "use_time"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v7, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v7}, Lcom/android/server/audio/AudioMonitor;->access$400(Lcom/android/server/audio/AudioMonitor;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v7

    if-nez v7, :cond_9f

    .line 194
    iget-object v7, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    new-instance v8, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v9, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/audio/AudioMonitor;->access$500(Lcom/android/server/audio/AudioMonitor;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "RBS8PPYT2W"

    invoke-direct {v8, v9, v10}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioMonitor;->access$402(Lcom/android/server/audio/AudioMonitor;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 196
    :cond_9f
    iget-object v7, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v7}, Lcom/android/server/audio/AudioMonitor;->access$400(Lcom/android/server/audio/AudioMonitor;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v7

    const-string v8, "alert_slider"

    invoke-virtual {v7, v8, v6}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    const-string v7, "AudioMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v9}, Lcom/android/server/audio/AudioMonitor;->access$100(Lcom/android/server/audio/AudioMonitor;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " lapse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v6    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ce
    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # setter for: Lcom/android/server/audio/AudioMonitor;->mStartTime:J
    invoke-static {v6, v2, v3}, Lcom/android/server/audio/AudioMonitor;->access$202(Lcom/android/server/audio/AudioMonitor;J)J

    .line 200
    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # setter for: Lcom/android/server/audio/AudioMonitor;->mRingerMode:I
    invoke-static {v6, v1}, Lcom/android/server/audio/AudioMonitor;->access$102(Lcom/android/server/audio/AudioMonitor;I)I

    .line 202
    .end local v1    # "ringerMode":I
    .end local v2    # "current":J
    .end local v4    # "lapse":J
    :goto_d8
    goto/16 :goto_19f

    .line 203
    :cond_da
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 204
    const-string/jumbo v1, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, "hsState":I
    const-string/jumbo v7, "usbheadset"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "isTypec":I
    const-string v7, "AudioMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " hsState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isTypec:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v7, 0x1

    if-ne v2, v7, :cond_122

    if-ne v1, v7, :cond_122

    .line 208
    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # setter for: Lcom/android/server/audio/AudioMonitor;->mIsTypec:Z
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioMonitor;->access$602(Lcom/android/server/audio/AudioMonitor;Z)Z

    goto :goto_127

    .line 210
    :cond_122
    iget-object v8, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # setter for: Lcom/android/server/audio/AudioMonitor;->mIsTypec:Z
    invoke-static {v8, v6}, Lcom/android/server/audio/AudioMonitor;->access$602(Lcom/android/server/audio/AudioMonitor;Z)Z

    .line 212
    :goto_127
    if-ne v1, v7, :cond_19f

    .line 213
    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J
    invoke-static {v6}, Lcom/android/server/audio/AudioMonitor;->access$700(Lcom/android/server/audio/AudioMonitor;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_19f

    iget-object v6, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/audio/AudioMonitor;->access$800(Lcom/android/server/audio/AudioMonitor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_19f

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget-object v8, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J
    invoke-static {v8}, Lcom/android/server/audio/AudioMonitor;->access$700(Lcom/android/server/audio/AudioMonitor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 215
    .local v6, "lapse":J
    iget-object v8, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v4

    # setter for: Lcom/android/server/audio/AudioMonitor;->mMusicPlayingStarting:J
    invoke-static {v8, v9, v10}, Lcom/android/server/audio/AudioMonitor;->access$702(Lcom/android/server/audio/AudioMonitor;J)J

    .line 216
    const-wide/16 v4, 0x5

    cmp-long v4, v6, v4

    if-lez v4, :cond_189

    const-wide/32 v4, 0x15180

    cmp-long v4, v6, v4

    if-gez v4, :cond_189

    .line 217
    iget-object v4, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # invokes: Lcom/android/server/audio/AudioMonitor;->setMdmEvent(JI)V
    invoke-static {v4, v6, v7, v3}, Lcom/android/server/audio/AudioMonitor;->access$900(Lcom/android/server/audio/AudioMonitor;JI)V

    .line 218
    const-string v3, "AudioMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM,device:2 lapse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/android/server/audio/AudioMonitor$AudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioMonitor;

    # getter for: Lcom/android/server/audio/AudioMonitor;->mSession:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/audio/AudioMonitor;->access$800(Lcom/android/server/audio/AudioMonitor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_19f

    .line 221
    :cond_189
    const-string v3, "AudioMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM,ignore: speaker  lapse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v1    # "hsState":I
    .end local v2    # "isTypec":I
    .end local v6    # "lapse":J
    :cond_19f
    :goto_19f
    return-void
.end method
