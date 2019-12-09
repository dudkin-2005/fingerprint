.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_UNSUPPORTED:I = 0x40

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final DP_AUDIO_CONNS:[Ljava/lang/String;

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_DP_AUDIO:Ljava/lang/String; = "soc:qcom,msm-ext-disp"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SDM845_NAME_H2W:Ljava/lang/String; = "tavil_codec"

.field private static final SUPPORTED_HEADSETS:I = 0x7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/0/0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 289
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 110
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 113
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 116
    nop

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 119
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 62
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 62
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 62
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .line 62
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onSystemReady()V
    .registers 7

    .line 123
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3f

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 126
    or-int/lit8 v0, v0, 0x4

    .line 128
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 129
    or-int/lit8 v0, v0, 0x10

    .line 131
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 132
    or-int/lit8 v0, v0, 0x40

    .line 135
    :cond_2a
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x13

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_37

    .line 136
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 138
    :cond_37
    const-wide/16 v1, 0x0

    const v3, 0x80054

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 141
    .end local v0    # "switchValues":I
    :cond_3f
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 142
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 14
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetNameAddr"    # Ljava/lang/String;

    .line 337
    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_e6

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "outDevice":I
    const/4 v1, 0x0

    .line 344
    .local v1, "inDevice":I
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "headset ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "headsetstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    and-int v2, p2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    .line 348
    const/4 v2, 0x1

    .line 348
    .local v2, "state":I
    goto :goto_30

    .line 350
    .end local v2    # "state":I
    :cond_2f
    move v2, v3

    .line 353
    .restart local v2    # "state":I
    :goto_30
    const/4 v4, 0x1

    if-eq p1, v4, :cond_71

    const/16 v5, 0x40

    if-ne p1, v5, :cond_38

    goto :goto_71

    .line 356
    :cond_38
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3e

    .line 357
    const/16 v0, 0x8

    goto :goto_75

    .line 358
    :cond_3e
    const/16 v5, 0x20

    if-ne p1, v5, :cond_45

    .line 359
    const/high16 v0, 0x20000

    goto :goto_75

    .line 360
    :cond_45
    const/4 v5, 0x4

    if-ne p1, v5, :cond_4b

    .line 361
    const/16 v0, 0x800

    goto :goto_75

    .line 362
    :cond_4b
    const/16 v5, 0x8

    if-ne p1, v5, :cond_52

    .line 363
    const/16 v0, 0x1000

    goto :goto_75

    .line 364
    :cond_52
    const/16 v5, 0x10

    if-ne p1, v5, :cond_59

    .line 365
    const/16 v0, 0x400

    goto :goto_75

    .line 367
    :cond_59
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 354
    :cond_71
    :goto_71
    const/4 v0, 0x4

    .line 355
    const v1, -0x7ffffff0

    .line 372
    :goto_75
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "headset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    if-ne v2, v4, :cond_8a

    const-string v7, " connected"

    goto :goto_8c

    :cond_8a
    const-string v7, " disconnected"

    :goto_8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v5, "/"

    invoke-virtual {p4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "hs":[Ljava/lang/String;
    if-eqz v0, :cond_d5

    .line 379
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Output device address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    if-le v8, v4, :cond_b0

    aget-object v8, v5, v4

    goto :goto_b2

    :cond_b0
    const-string v8, ""

    :goto_b2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 383
    array-length v7, v5

    if-le v7, v4, :cond_ce

    aget-object v7, v5, v4

    goto :goto_d0

    :cond_ce
    const-string v7, ""

    :goto_d0
    aget-object v8, v5, v3

    .line 382
    invoke-virtual {v6, v0, v2, v7, v8}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_d5
    if-eqz v1, :cond_e6

    .line 386
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 387
    array-length v7, v5

    if-le v7, v4, :cond_df

    aget-object v4, v5, v4

    goto :goto_e1

    :cond_df
    const-string v4, ""

    :goto_e1
    aget-object v3, v5, v3

    .line 386
    invoke-virtual {v6, v1, v2, v4, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v0    # "outDevice":I
    .end local v1    # "inDevice":I
    .end local v2    # "state":I
    .end local v5    # "hs":[Ljava/lang/String;
    :cond_e6
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 9
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetNameAddr"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v1, p2, :cond_23

    if-ne v2, p1, :cond_23

    .line 318
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 320
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    goto :goto_34

    .line 332
    :catchall_21
    move-exception v1

    goto :goto_36

    .line 324
    :cond_23
    const/16 v1, 0x7f

    .line 325
    .local v1, "allHeadsets":I
    nop

    .local v2, "curHeadset":I
    :goto_26
    if-eqz v1, :cond_34

    .line 326
    and-int v3, v2, v1

    if-eqz v3, :cond_31

    .line 327
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 328
    not-int v3, v2

    and-int/2addr v1, v3

    .line 325
    :cond_31
    shl-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 332
    .end local v1    # "allHeadsets":I
    .end local v2    # "curHeadset":I
    :cond_34
    :goto_34
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_21

    throw v1
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .line 393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 396
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    .line 400
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .line 218
    and-int/lit8 v0, p3, 0x7f

    .line 219
    .local v0, "headsetState":I
    and-int/lit8 v1, v0, 0x4

    .line 220
    .local v1, "usb_headset_anlg":I
    and-int/lit8 v2, v0, 0x8

    .line 225
    .local v2, "usb_headset_dgtl":I
    and-int/lit8 v3, v0, 0x63

    .line 227
    .local v3, "h2w_headset":I
    const/4 v4, 0x1

    .line 228
    .local v4, "h2wStateChange":Z
    const/4 v5, 0x1

    .line 232
    .local v5, "usbStateChange":Z
    const-string/jumbo v6, "tavil_codec"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_18

    if-ne v3, v7, :cond_18

    .line 233
    const-string p1, "American Headset"

    .line 237
    :cond_18
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v6, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v6, v0, :cond_55

    .line 243
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "No state change."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 260
    :cond_55
    const/16 v6, 0x43

    if-eq v3, v6, :cond_5d

    const/16 v6, 0x23

    if-ne v3, v6, :cond_65

    .line 262
    :cond_5d
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v4, 0x0

    .line 268
    :cond_65
    const/4 v6, 0x4

    if-ne v1, v6, :cond_74

    const/16 v6, 0x8

    if-ne v2, v6, :cond_74

    .line 269
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v5, 0x0

    .line 272
    :cond_74
    if-nez v4, :cond_81

    if-nez v5, :cond_81

    .line 273
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "invalid transition, returning ..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 277
    :cond_81
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 279
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "MSG_NEW_DEVICE_STATE"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 284
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 287
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 146
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "tmpName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_33
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v3, p4

    and-int/2addr v2, v3

    or-int/2addr v2, p3

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 156
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    const v3, 0x80054

    and-int/2addr v2, v3

    if-eqz v2, :cond_72

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x14

    if-eq v2, v3, :cond_66

    const/16 v3, 0x40

    if-eq v2, v3, :cond_60

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_5a

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "headset":I
    const-string v3, "No Device"

    move-object v0, v3

    goto :goto_77

    .line 183
    .end local v2    # "headset":I
    :cond_5a
    const/16 v2, 0x40

    .line 184
    .restart local v2    # "headset":I
    const-string v3, "Headset"

    move-object v0, v3

    .line 185
    goto :goto_77

    .line 169
    .end local v2    # "headset":I
    :cond_60
    const/16 v2, 0x20

    .line 170
    .restart local v2    # "headset":I
    const-string v3, "Handset"

    move-object v0, v3

    .line 171
    goto :goto_77

    .line 174
    .end local v2    # "headset":I
    :cond_66
    const/4 v2, 0x1

    .line 175
    .restart local v2    # "headset":I
    const-string v3, "American Headset"

    move-object v0, v3

    .line 176
    goto :goto_77

    .line 179
    .end local v2    # "headset":I
    :cond_6b
    const/4 v2, 0x1

    .line 180
    .restart local v2    # "headset":I
    goto :goto_77

    .line 164
    .end local v2    # "headset":I
    :cond_6d
    const/4 v2, 0x2

    .line 165
    .restart local v2    # "headset":I
    const-string v3, "Handset"

    move-object v0, v3

    .line 166
    goto :goto_77

    .line 159
    .end local v2    # "headset":I
    :cond_72
    const/4 v2, 0x0

    .line 160
    .restart local v2    # "headset":I
    const-string v3, "No Device"

    move-object v0, v3

    .line 161
    nop

    .line 192
    :goto_77
    const-string v3, ""

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v4, v4, -0x64

    or-int/2addr v4, v2

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    .end local v2    # "headset":I
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_83
    move-exception v2

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_33 .. :try_end_85} :catchall_83

    throw v2
.end method

.method public systemReady()V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 202
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 203
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
