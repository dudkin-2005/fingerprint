.class Lcom/android/server/media/AudioPlayerStateMonitor;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;,
        Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;


# instance fields
.field private final mActiveAudioUids:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;",
            "Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredToAudioService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSortedAudioPlaybackClientUids:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    .line 47
    const-string v0, "AudioPlayerStateMonitor"

    sput-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-direct {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;-><init>()V

    sput-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    .line 117
    return-void
.end method

.method static getInstance()Lcom/android/server/media/AudioPlayerStateMonitor;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object v0
.end method

.method private sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 5
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    .line 296
    .local v1, "messageHandler":Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->sendAudioPlayerActiveStateChangedMessage(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 297
    .end local v1    # "messageHandler":Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
    goto :goto_a

    .line 298
    :cond_1a
    return-void
.end method


# virtual methods
.method public cleanUpAudioPlaybackUids(I)V
    .registers 7
    .param p1, "mediaButtonSessionUid"    # I

    .line 239
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 241
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_34

    .line 242
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 243
    goto :goto_34

    .line 245
    :cond_1a
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 246
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v1, v4, :cond_31

    invoke-virtual {p0, v3}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 251
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->remove(I)V

    .line 241
    .end local v3    # "uid":I
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 254
    .end local v1    # "userId":I
    .end local v2    # "i":I
    :cond_34
    :goto_34
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 14
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 130
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    if-eqz p2, :cond_5

    .line 131
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 133
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 135
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_ef

    .line 137
    :try_start_c
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 138
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    .local v3, "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    .line 141
    .local v5, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 142
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v5    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_44
    goto :goto_1a

    .line 148
    :cond_45
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_47
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_9d

    .line 149
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 150
    .local v6, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    .line 151
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 152
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 151
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9a

    .line 153
    sget-boolean v8, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    if-eqz v8, :cond_85

    .line 154
    sget-object v8, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found a new active media playback. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {v6}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_85
    iget-object v8, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v8, v7}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    .line 159
    .local v8, "index":I
    if-nez v8, :cond_8e

    .line 161
    goto :goto_9a

    .line 162
    :cond_8e
    if-lez v8, :cond_95

    .line 163
    iget-object v9, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v9, v8}, Landroid/util/IntArray;->remove(I)V

    .line 165
    :cond_95
    iget-object v9, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v9, v4, v7}, Landroid/util/IntArray;->add(II)V

    .line 148
    .end local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v7    # "uid":I
    .end local v8    # "index":I
    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 169
    .end local v5    # "i":I
    :cond_9d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 170
    .restart local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v8

    .line 171
    .local v8, "pii":I
    iget-object v9, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_bf

    goto :goto_c0

    :cond_bf
    move v7, v4

    .line 172
    .local v7, "wasActive":Z
    :goto_c0
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v9

    if-eq v7, v9, :cond_c9

    .line 173
    invoke-direct {p0, v6, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 176
    .end local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v7    # "wasActive":Z
    .end local v8    # "pii":I
    :cond_c9
    goto :goto_a1

    .line 177
    :cond_ca
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    .line 178
    .local v5, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-direct {p0, v5, v7}, Lcom/android/server/media/AudioPlayerStateMonitor;->sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 179
    .end local v5    # "config":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_d4

    .line 182
    :cond_e4
    iput-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 183
    .end local v3    # "activeAudioPlaybackConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v2
    :try_end_e7
    .catchall {:try_start_c .. :try_end_e7} :catchall_ec

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    nop

    .line 187
    return-void

    .line 183
    :catchall_ec
    move-exception v3

    :try_start_ed
    monitor-exit v2
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw v3
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    .line 185
    :catchall_ef
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Audio playback (lastly played comes first)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "indent":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 264
    .local v3, "i":I
    :goto_2a
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_85

    .line 265
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 266
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_7f

    array-length v6, v5

    if-lez v6, :cond_7f

    .line 269
    move v6, v2

    .line 269
    .local v6, "j":I
    :goto_63
    array-length v7, v5

    if-ge v6, v7, :cond_7f

    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 273
    .end local v6    # "j":I
    :cond_7f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 264
    .end local v4    # "uid":I
    .end local v5    # "packages":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 275
    .end local v1    # "indent":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_85
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v1
.end method

.method public getSortedAudioPlaybackClientUids()Landroid/util/IntArray;
    .registers 4

    .line 214
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 215
    .local v0, "sortedAudioPlaybackClientUids":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 217
    monitor-exit v1

    .line 218
    return-object v0

    .line 217
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public isPlaybackActive(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 227
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 194
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    if-nez p2, :cond_e

    .line 196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_12

    :cond_e
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_12
    invoke-direct {v2, v3, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V

    .line 195
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public registerSelfIntoAudioServiceIfNeeded(Landroid/media/IAudioService;)V
    .registers 6
    .param p1, "audioService"    # Landroid/media/IAudioService;

    .line 279
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mRegisteredToAudioService:Z

    if-nez v1, :cond_d

    .line 282
    invoke-interface {p1, p0}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mRegisteredToAudioService:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_10
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    .line 288
    :cond_d
    goto :goto_1b

    .line 289
    :catchall_e
    move-exception v1

    goto :goto_1d

    .line 285
    :catch_10
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_11
    sget-object v2, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Failed to register playback callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mRegisteredToAudioService:Z

    .line 289
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_e

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    .line 204
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
