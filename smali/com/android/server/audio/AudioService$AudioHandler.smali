.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 6128
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 6128
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .line 6128
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 6381
    if-eqz p1, :cond_20

    .line 6383
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 6384
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 6387
    goto :goto_20

    .line 6385
    :catch_9
    move-exception v0

    .line 6386
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6389
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_20
    :goto_20
    return-void
.end method

.method private getSoundEffectFilePath(I)Ljava/lang/String;
    .registers 7
    .param p1, "effectType"    # I

    .line 6168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6169
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6170
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_64

    .line 6171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6172
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v3, v4, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6174
    :cond_64
    return-object v0
.end method

.method private onLoadSoundEffects()Z
    .registers 18

    .line 6180
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6181
    :try_start_9
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 6182
    const-string v0, "AudioService"

    const-string/jumbo v4, "onLoadSoundEffects() called before boot complete"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6183
    monitor-exit v2

    return v3

    .line 6186
    :cond_1c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    .line 6187
    monitor-exit v2

    return v4

    .line 6190
    :cond_27
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)V

    .line 6192
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 6193
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v8, 0xd

    .line 6195
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 6196
    invoke-virtual {v7, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 6197
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 6194
    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    .line 6198
    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    .line 6192
    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6199
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 6200
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v6, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6201
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 6202
    const/4 v0, 0x3

    .line 6203
    .local v0, "attempts":I
    :goto_72
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_20e

    const-wide/16 v7, 0x1388

    if-nez v6, :cond_96

    add-int/lit8 v6, v0, -0x1

    .line 6203
    .local v6, "attempts":I
    if-lez v0, :cond_95

    .line 6206
    .end local v0    # "attempts":I
    :try_start_80
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_89} :catch_8a
    .catchall {:try_start_80 .. :try_end_89} :catchall_20e

    .line 6209
    :goto_89
    goto :goto_93

    .line 6207
    :catch_8a
    move-exception v0

    .line 6208
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8b
    const-string v7, "AudioService"

    const-string v8, "Interrupted while waiting sound pool listener thread."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_89

    .line 6202
    :goto_93
    move v0, v6

    goto :goto_72

    .line 6212
    :cond_95
    move v0, v6

    .line 6212
    .end local v6    # "attempts":I
    .local v0, "attempts":I
    :cond_96
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v6

    if-nez v6, :cond_d1

    .line 6213
    const-string v4, "AudioService"

    const-string/jumbo v6, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6214
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_bc

    .line 6215
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 6216
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6218
    :cond_bc
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6219
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    .line 6220
    iget-object v4, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6221
    monitor-exit v2

    return v3

    .line 6229
    :cond_d1
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 6230
    .local v6, "poolId":[I
    move v9, v3

    .line 6230
    .local v9, "fileIdx":I
    :goto_dc
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, -0x1

    if-ge v9, v10, :cond_ec

    .line 6231
    aput v11, v6, v9

    .line 6230
    add-int/lit8 v9, v9, 0x1

    goto :goto_dc

    .line 6239
    .end local v9    # "fileIdx":I
    :cond_ec
    const/4 v9, 0x0

    .line 6240
    .local v9, "numSamples":I
    move v10, v9

    move v9, v3

    .line 6240
    .local v9, "effect":I
    .local v10, "numSamples":I
    :goto_ef
    const/16 v12, 0xa

    if-ge v9, v12, :cond_168

    .line 6242
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v4

    if-nez v12, :cond_100

    .line 6243
    goto :goto_164

    .line 6245
    :cond_100
    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v3

    aget v12, v6, v12

    if-ne v12, v11, :cond_14e

    .line 6246
    invoke-direct {v1, v9}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v12

    .line 6247
    .local v12, "filePath":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13, v12, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    .line 6248
    .local v13, "sampleId":I
    if-gtz v13, :cond_135

    .line 6249
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 6251
    :cond_135
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    aput v13, v11, v4

    .line 6252
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    aget v11, v11, v3

    aput v13, v6, v11

    .line 6253
    add-int/lit8 v10, v10, 0x1

    .line 6255
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "sampleId":I
    :goto_14d
    goto :goto_164

    .line 6256
    :cond_14e
    iget-object v11, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v9

    iget-object v12, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6257
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v9

    aget v12, v12, v3

    aget v12, v6, v12

    aput v12, v11, v4

    .line 6240
    :goto_164
    add-int/lit8 v9, v9, 0x1

    const/4 v11, -0x1

    goto :goto_ef

    .line 6261
    .end local v9    # "effect":I
    :cond_168
    if-lez v10, :cond_19f

    .line 6262
    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_173
    .catchall {:try_start_8b .. :try_end_173} :catchall_20e

    .line 6264
    const/4 v0, 0x3

    .line 6265
    move v9, v0

    move v0, v4

    .line 6265
    .local v0, "status":I
    .local v9, "attempts":I
    :goto_176
    move v11, v0

    .line 6266
    .end local v0    # "status":I
    .local v11, "status":I
    if-ne v11, v4, :cond_19d

    add-int/lit8 v13, v9, -0x1

    .line 6266
    .local v13, "attempts":I
    if-lez v9, :cond_1a1

    .line 6268
    .end local v9    # "attempts":I
    :try_start_17d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 6269
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I

    move-result v0
    :try_end_190
    .catch Ljava/lang/InterruptedException; {:try_start_17d .. :try_end_190} :catch_191
    .catchall {:try_start_17d .. :try_end_190} :catchall_20e

    .line 6272
    .end local v11    # "status":I
    .restart local v0    # "status":I
    goto :goto_19b

    .line 6270
    .end local v0    # "status":I
    .restart local v11    # "status":I
    :catch_191
    move-exception v0

    .line 6271
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_192
    const-string v9, "AudioService"

    const-string v14, "Interrupted while waiting sound pool callback."

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 6265
    move v0, v11

    .line 6265
    .end local v11    # "status":I
    .end local v13    # "attempts":I
    .local v0, "status":I
    .restart local v9    # "attempts":I
    :goto_19b
    move v9, v13

    goto :goto_176

    .line 6275
    .end local v0    # "status":I
    .restart local v11    # "status":I
    :cond_19d
    move v13, v9

    goto :goto_1a1

    .line 6275
    .end local v9    # "attempts":I
    .end local v11    # "status":I
    .local v0, "attempts":I
    :cond_19f
    move v13, v0

    const/4 v11, -0x1

    .line 6275
    .end local v0    # "attempts":I
    .restart local v11    # "status":I
    .restart local v13    # "attempts":I
    :cond_1a1
    :goto_1a1
    move v0, v11

    .line 6278
    .end local v11    # "status":I
    .local v0, "status":I
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    if-eqz v7, :cond_1b8

    .line 6279
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 6280
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$2302(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6282
    :cond_1b8
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6283
    if-eqz v0, :cond_208

    .line 6284
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onLoadSoundEffects(), Error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " while loading samples"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6286
    move v7, v3

    .line 6286
    .local v7, "effect":I
    :goto_1dc
    if-ge v7, v12, :cond_1fa

    .line 6287
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    aget v8, v8, v4

    if-lez v8, :cond_1f6

    .line 6288
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v8

    aget-object v8, v8, v7

    const/4 v9, -0x1

    aput v9, v8, v4

    goto :goto_1f7

    .line 6286
    :cond_1f6
    const/4 v9, -0x1

    :goto_1f7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1dc

    .line 6292
    .end local v7    # "effect":I
    :cond_1fa
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/SoundPool;->release()V

    .line 6293
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6295
    .end local v6    # "poolId":[I
    .end local v10    # "numSamples":I
    .end local v13    # "attempts":I
    :cond_208
    monitor-exit v2

    .line 6296
    if-nez v0, :cond_20d

    move v3, v4

    nop

    :cond_20d
    return v3

    .line 6295
    .end local v0    # "status":I
    :catchall_20e
    move-exception v0

    monitor-exit v2
    :try_end_210
    .catchall {:try_start_192 .. :try_end_210} :catchall_20e

    throw v0
.end method

.method private onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 4
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "direction"    # I

    .line 6406
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 6409
    goto :goto_5

    .line 6407
    :catch_4
    move-exception v0

    .line 6410
    :goto_5
    return-void
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 6398
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6401
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 12
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .line 6331
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6333
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 6335
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_14

    .line 6336
    monitor-exit v0

    return-void

    .line 6340
    :cond_14
    if-gez p2, :cond_27

    .line 6341
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    # getter for: Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6700()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .local v1, "volFloat":F
    goto :goto_2b

    .line 6343
    .end local v1    # "volFloat":F
    :cond_27
    int-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 6346
    .restart local v1    # "volFloat":F
    :goto_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_52

    .line 6347
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    aget v3, v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_c3

    .line 6350
    :cond_52
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_c5

    .line 6352
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_57
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->getSoundEffectFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 6353
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 6354
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6355
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 6356
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 6357
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6362
    new-instance v3, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6368
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7a} :catch_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_7a} :catch_93
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_7a} :catch_7b
    .catchall {:try_start_57 .. :try_end_7a} :catchall_c5

    .end local v4    # "filePath":Ljava/lang/String;
    goto :goto_c2

    .line 6373
    :catch_7b
    move-exception v3

    .line 6374
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_7c
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalStateException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "volFloat":F
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_c3

    .line 6371
    .restart local v1    # "volFloat":F
    .restart local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_93
    move-exception v3

    .line 6372
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_c2

    .line 6369
    :catch_ab
    move-exception v3

    .line 6370
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6375
    .end local v1    # "volFloat":F
    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_c2
    nop

    .line 6377
    :goto_c3
    monitor-exit v0

    .line 6378
    return-void

    .line 6377
    :catchall_c5
    move-exception v1

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_7c .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .line 6305
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6306
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_11

    .line 6307
    monitor-exit v0

    return-void

    .line 6310
    :cond_11
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 6311
    .local v1, "poolId":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "fileIdx":I
    :goto_1d
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 6312
    aput v2, v1, v3

    .line 6311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 6315
    .end local v3    # "fileIdx":I
    :cond_2c
    move v3, v2

    .local v3, "effect":I
    :goto_2d
    const/16 v4, 0xa

    if-ge v3, v4, :cond_7a

    .line 6316
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3f

    .line 6317
    goto :goto_77

    .line 6319
    :cond_3f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aget v4, v1, v4

    if-nez v4, :cond_77

    .line 6320
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v6

    aget-object v6, v6, v3

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->unload(I)Z

    .line 6321
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 6322
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v6, v1, v4

    .line 6315
    :cond_77
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 6325
    .end local v3    # "effect":I
    :cond_7a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 6326
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6327
    .end local v1    # "poolId":[I
    monitor-exit v0

    .line 6328
    return-void

    .line 6327
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 6161
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6162
    return-void

    .line 6164
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6165
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 7
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 6146
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6147
    return-void

    .line 6149
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 6150
    return-void

    .line 6152
    :cond_19
    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$6100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6153
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 6154
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 6155
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    .line 6153
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6158
    :cond_35
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6133
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6136
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 6137
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_29

    .line 6138
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    .line 6139
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 6140
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 6137
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 6143
    .end local v1    # "streamType":I
    :cond_29
    return-void
.end method

.method private setForceUse(IILjava/lang/String;)V
    .registers 6
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 6392
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 6393
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    .line 6394
    monitor-exit v0

    .line 6395
    return-void

    .line 6394
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 6414
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_422

    packed-switch v0, :pswitch_data_42a

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_434

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_440

    const/16 v1, 0xa

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_45a

    packed-switch v0, :pswitch_data_478

    goto/16 :goto_420

    .line 6465
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 6466
    :try_start_23
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6467
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_38

    .line 6468
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6469
    goto/16 :goto_420

    .line 6467
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1

    .line 6502
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 6503
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6504
    goto/16 :goto_420

    .line 6512
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_5d

    move v2, v3

    nop

    :cond_5d
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 6514
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6515
    goto/16 :goto_420

    .line 6507
    :pswitch_6d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    # invokes: Lcom/android/server/audio/AudioService;->onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 6508
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6509
    goto/16 :goto_420

    .line 6497
    :pswitch_81
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 6498
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6499
    goto/16 :goto_420

    .line 6492
    :pswitch_99
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 6493
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6494
    goto/16 :goto_420

    .line 6482
    :pswitch_af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 6484
    .local v0, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6485
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v5, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v6, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6487
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6489
    .end local v0    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    goto/16 :goto_420

    .line 6569
    :pswitch_db
    const-string v0, "AudioService"

    const-string v1, "MSG_MUTE_MUSIC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 6572
    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    .line 6571
    invoke-static {v4, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 6573
    invoke-static {v3}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 6575
    const-string v0, "AudioService"

    const-string v1, "MSG_MUTE_MUSIC completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6577
    goto/16 :goto_420

    .line 6614
    :pswitch_f7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientingVol:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_420

    .line 6615
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientVol:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    add-int/2addr v5, v3

    # setter for: Lcom/android/server/audio/AudioService;->mGradientVol:I
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$9002(Lcom/android/server/audio/AudioService;I)I

    .line 6616
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v4

    .line 6617
    .local v0, "streamTypeAlias":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientVol:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    mul-int/2addr v5, v1

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v3, v5, v4, v0}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v3

    .line 6618
    .local v3, "index":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-gt v3, v4, :cond_12c

    .line 6619
    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v7, 0x3

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x0

    const-string v11, "GradientingMusicVol"

    move v8, v3

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6621
    :cond_12c
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_135

    .line 6622
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mGradientingVol:Z
    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->access$5402(Lcom/android/server/audio/AudioService;Z)Z

    .line 6624
    :cond_135
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ge v3, v2, :cond_168

    .line 6625
    const/16 v2, 0xbb8

    .line 6626
    .local v2, "autoPlayGradient":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x80

    if-eq v4, v5, :cond_14d

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x100

    if-eq v4, v5, :cond_14d

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_14f

    .line 6629
    :cond_14d
    const/16 v2, 0x1388

    .line 6631
    :cond_14f
    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, 0x5

    div-int/2addr v4, v1

    div-int v1, v2, v4

    .line 6632
    .local v1, "steps":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x23

    const/4 v7, 0x0

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x0

    move v11, v1

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6634
    .end local v0    # "streamTypeAlias":I
    .end local v1    # "steps":I
    .end local v2    # "autoPlayGradient":I
    .end local v3    # "index":I
    :cond_168
    goto/16 :goto_420

    .line 6594
    :pswitch_16a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6595
    .local v0, "state":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-ne v5, v3, :cond_420

    if-ne v0, v3, :cond_420

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-nez v5, :cond_420

    const/16 v5, 0xb

    .line 6596
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-nez v5, :cond_420

    .line 6597
    invoke-static {v1}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v5

    if-nez v5, :cond_420

    .line 6598
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;I)I

    move-result v6

    # setter for: Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$8802(Lcom/android/server/audio/AudioService;I)I

    .line 6599
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v4, v6, v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$8902(Lcom/android/server/audio/AudioService;I)I

    .line 6600
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-le v4, v1, :cond_1f0

    .line 6601
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mGradientVol:I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$9002(Lcom/android/server/audio/AudioService;I)I

    .line 6602
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mGradientingVol:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$5402(Lcom/android/server/audio/AudioService;Z)Z

    .line 6603
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientVol:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)I

    move-result v6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "GradientingMusicVol"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6604
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x23

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0xa

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6606
    :cond_1f0
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v4, 0x7e

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6607
    .local v1, "KeyDownEvent":Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v3, v5

    .line 6608
    .local v3, "KeyUpEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    .line 6609
    .local v4, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v4, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6610
    invoke-virtual {v4, v3, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6611
    .end local v1    # "KeyDownEvent":Landroid/view/KeyEvent;
    .end local v3    # "KeyUpEvent":Landroid/view/KeyEvent;
    .end local v4    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    goto/16 :goto_420

    .line 6640
    .end local v0    # "state":I
    :pswitch_20f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6641
    .local v0, "han":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LISTEN_AREA_STATUS start han:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mListeningarea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6642
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_297

    .line 6643
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->IsOnEUArea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_263

    .line 6644
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->IsOnEUArea(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_276

    .line 6645
    const-string v1, "EuropeanStandard=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_276

    .line 6648
    :cond_263
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->IsOnEUArea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_276

    .line 6649
    const-string v1, "EuropeanStandard=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6652
    :cond_276
    :goto_276
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$9302(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 6653
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LISTEN_AREA_STATUS change mListeningarea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6655
    :cond_297
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LISTEN_AREA_STATUS completed mListeningarea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6656
    goto/16 :goto_420

    .line 6588
    .end local v0    # "han":Ljava/lang/String;
    :pswitch_2b5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "per_speaker_music_volume"

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6589
    goto/16 :goto_420

    .line 6582
    :pswitch_2c9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onPlaySilentBuffer()V

    .line 6583
    goto/16 :goto_420

    .line 6690
    :pswitch_2d0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    # invokes: Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    goto/16 :goto_420

    .line 6439
    :pswitch_2db
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2e3

    move v2, v3

    nop

    :cond_2e3
    # invokes: Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;Z)V

    .line 6440
    goto/16 :goto_420

    .line 6686
    :pswitch_2e8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 6687
    goto/16 :goto_420

    .line 6667
    :pswitch_2f3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;I)V

    .line 6668
    goto/16 :goto_420

    .line 6663
    :pswitch_2fc
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 6664
    goto/16 :goto_420

    .line 6682
    :pswitch_303
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$9600(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6683
    goto/16 :goto_420

    .line 6678
    :pswitch_310
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;II)V

    .line 6679
    goto/16 :goto_420

    .line 6671
    :pswitch_31b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6672
    .local v0, "musicActiveMs":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6675
    goto/16 :goto_420

    .line 6659
    .end local v0    # "musicActiveMs":I
    :pswitch_32c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 6660
    goto/16 :goto_420

    .line 6443
    :pswitch_333
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    .line 6444
    goto/16 :goto_420

    .line 6562
    :pswitch_338
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;I)V

    .line 6563
    goto/16 :goto_420

    .line 6558
    :pswitch_341
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    .line 6559
    goto/16 :goto_420

    .line 6554
    :pswitch_348
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v1, v4, :cond_352

    move v2, v3

    nop

    :cond_352
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 6556
    goto/16 :goto_420

    .line 6545
    :pswitch_35b
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_366

    .line 6546
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6549
    :cond_366
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;)V

    .line 6550
    goto/16 :goto_420

    .line 6539
    :pswitch_36d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6540
    goto/16 :goto_420

    .line 6518
    :pswitch_378
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 6519
    .local v0, "N":I
    if-lez v0, :cond_3a8

    .line 6521
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6522
    :try_start_387
    new-instance v3, Landroid/media/AudioRoutesInfo;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v3, v4}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6523
    .local v3, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_391
    .catchall {:try_start_387 .. :try_end_391} :catchall_3a5

    .line 6524
    :goto_391
    if-lez v0, :cond_3a8

    .line 6525
    add-int/lit8 v0, v0, -0x1

    .line 6526
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IAudioRoutesObserver;

    .line 6528
    .local v2, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_39f
    invoke-interface {v2, v3}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3a2
    .catch Landroid/os/RemoteException; {:try_start_39f .. :try_end_3a2} :catch_3a3

    .line 6530
    goto :goto_3a4

    .line 6529
    :catch_3a3
    move-exception v4

    .line 6531
    .end local v2    # "obs":Landroid/media/IAudioRoutesObserver;
    :goto_3a4
    goto :goto_391

    .line 6523
    .end local v3    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_3a5
    move-exception v1

    :try_start_3a6
    monitor-exit v2
    :try_end_3a7
    .catchall {:try_start_3a6 .. :try_end_3a7} :catchall_3a5

    throw v1

    .line 6533
    :cond_3a8
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6534
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;I)V

    .line 6535
    goto/16 :goto_420

    .line 6421
    .end local v0    # "N":I
    :pswitch_3b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 6422
    goto :goto_420

    .line 6477
    :pswitch_3be
    const-string v0, "AudioService"

    const-string v1, "In handleMessage(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)V

    .line 6479
    goto :goto_420

    .line 6473
    :pswitch_3cb
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(IILjava/lang/String;)V

    .line 6474
    goto :goto_420

    .line 6449
    :pswitch_3d7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v0

    .line 6450
    .local v0, "loaded":Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_420

    .line 6451
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 6452
    .local v3, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v3

    .line 6453
    if-eqz v0, :cond_3e8

    move v1, v2

    nop

    :cond_3e8
    :try_start_3e8
    iput v1, v3, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 6454
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 6455
    monitor-exit v3

    .line 6456
    .end local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    goto :goto_420

    .line 6455
    .restart local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catchall_3ef
    move-exception v1

    monitor-exit v3
    :try_end_3f1
    .catchall {:try_start_3e8 .. :try_end_3f1} :catchall_3ef

    throw v1

    .line 6460
    .end local v0    # "loaded":Z
    .end local v3    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :pswitch_3f2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    .line 6461
    goto :goto_420

    .line 6435
    :pswitch_3fa
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 6436
    goto :goto_420

    .line 6431
    :pswitch_400
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 6432
    goto :goto_420

    .line 6425
    :pswitch_40a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6426
    goto :goto_420

    .line 6417
    :pswitch_414
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6418
    nop

    .line 6693
    :cond_420
    :goto_420
    return-void

    nop

    :pswitch_data_422
    .packed-switch 0x0
        :pswitch_414
        :pswitch_40a
    .end packed-switch

    :pswitch_data_42a
    .packed-switch 0x3
        :pswitch_400
        :pswitch_3fa
        :pswitch_3f2
    .end packed-switch

    :pswitch_data_434
    .packed-switch 0x7
        :pswitch_3d7
        :pswitch_3cb
        :pswitch_3be
        :pswitch_3b6
    .end packed-switch

    :pswitch_data_440
    .packed-switch 0xc
        :pswitch_378
        :pswitch_3cb
        :pswitch_36d
        :pswitch_35b
        :pswitch_348
        :pswitch_348
        :pswitch_341
        :pswitch_338
        :pswitch_333
        :pswitch_32c
        :pswitch_31b
    .end packed-switch

    :pswitch_data_45a
    .packed-switch 0x18
        :pswitch_310
        :pswitch_303
        :pswitch_2fc
        :pswitch_2f3
        :pswitch_2e8
        :pswitch_2db
        :pswitch_2d0
        :pswitch_2c9
        :pswitch_2b5
        :pswitch_20f
        :pswitch_16a
        :pswitch_f7
        :pswitch_db
    .end packed-switch

    :pswitch_data_478
    .packed-switch 0x64
        :pswitch_af
        :pswitch_99
        :pswitch_81
        :pswitch_6d
        :pswitch_51
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
