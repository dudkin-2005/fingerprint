.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mIdleModeEnabled:Z

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mPowerSaveModeEnabled:Z

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .registers 4
    .param p2, "id"    # I

    .line 74
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 75
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 78
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_17

    .line 79
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    sput v0, Lcom/android/server/lights/LightsService;->mMax_brightness:I

    .line 80
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    .line 83
    :cond_17
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 72
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private getDcEnable()I
    .registers 3

    .line 298
    const-string/jumbo v0, "persist.vendor.dc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setLightLocked(IIIII)V
    .registers 14
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 227
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    const/4 p5, 0x2

    goto :goto_d

    .line 229
    :cond_8
    const/4 v0, 0x2

    if-ne p5, v0, :cond_d

    .line 230
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 235
    :cond_d
    :goto_d
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    .line 236
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 237
    const/4 p5, 0x4

    goto :goto_29

    .line 238
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 239
    const/4 p5, 0x3

    goto :goto_29

    .line 240
    :cond_22
    if-eq p5, v1, :cond_27

    const/4 v0, 0x3

    if-ne p5, v0, :cond_29

    .line 242
    :cond_27
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 245
    :cond_29
    :goto_29
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_58

    .line 246
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLightLocked: mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", brightnessMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastBrightnessMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_58
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getDcEnable()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_94

    const/16 v0, 0x104

    if-ge p1, v0, :cond_94

    if-le p1, v1, :cond_94

    .line 252
    :try_start_65
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_83

    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 254
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    .end local v0    # "data":Landroid/os/Parcel;
    goto :goto_8a

    .line 258
    :cond_83
    const-string v0, "LightsService"

    const-string v2, "flinger is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_8a} :catch_8b

    .line 262
    :goto_8a
    goto :goto_94

    .line 260
    :catch_8b
    move-exception v0

    .line 261
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LightsService"

    const-string/jumbo v3, "read flinger 1004 is fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_94
    :goto_94
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-static {v0, p2, p5}, Lcom/android/server/OemSceneLightsController;->canSetLights(III)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 268
    return-void

    .line 271
    :cond_9d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_b5

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_b5

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_b5

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_b5

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_b5

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq v0, p5, :cond_135

    .line 273
    :cond_b5
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-nez v0, :cond_bf

    # getter for: Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_ec

    :cond_bf
    const-string v0, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLight #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": color=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": brightnessMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_ec
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 276
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 277
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 278
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 279
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 280
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 281
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    const-wide/32 v6, 0x20000

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 286
    :try_start_127
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_131
    .catchall {:try_start_127 .. :try_end_131} :catchall_136

    .line 288
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 289
    nop

    .line 291
    :cond_135
    return-void

    .line 288
    :catchall_136
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private shouldBeInIdleMode()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleModeEnabled:Z

    return v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldBeInPowerSaveMode()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mPowerSaveModeEnabled:Z

    return v0
.end method

.method private stopFlashing()V
    .registers 7

    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .line 133
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 134
    return-void
.end method

.method public pulse(II)V
    .registers 10
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_2b

    .line 140
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 143
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    :cond_2b
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public setBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 88
    return-void
.end method

.method public setBrightness(II)V
    .registers 18
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    move-object v7, p0

    move/from16 v8, p1

    monitor-enter p0

    const/4 v0, 0x2

    move/from16 v9, p2

    if-ne v9, v0, :cond_33

    :try_start_9
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    goto/16 :goto_117

    :cond_33
    const-string/jumbo v0, "persist.display.rom_max_brightness"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "rom_max_brightness":I
    iget v2, v7, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const-wide v3, 0x406fe00000000000L    # 255.0

    if-nez v2, :cond_f4

    const-string/jumbo v2, "ro.vendor.build.fingerprint"

    const-string/jumbo v5, "hello"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .local v10, "fp":Ljava/lang/String;
    const-string v2, ".*astarqlte.*"

    invoke-virtual {v10, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_7c

    int-to-double v1, v8

    int-to-double v11, v0

    div-double/2addr v11, v3

    div-double/2addr v1, v11

    double-to-int v1, v1

    .local v1, "newBrightness":I
    const-string/jumbo v2, "persist.sys.samsung.full_brightness"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_70

    int-to-double v5, v8

    const-wide v11, 0x4076d00000000000L    # 365.0

    mul-double/2addr v5, v11

    div-double/2addr v5, v3

    double-to-int v1, v5

    .end local v1    # "newBrightness":I
    .local v11, "newBrightness":I
    :cond_70
    move v11, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move v2, v11

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    monitor-exit p0

    return-void

    .end local v11    # "newBrightness":I
    :cond_7c
    const-string/jumbo v2, "persist.sys.phh.samsung_backlight"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_d2

    const-string v2, ".*beyond.*lte.*"

    invoke-virtual {v10, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d2

    const-string v2, ".*(crown|star)[q2]*lte.*"

    invoke-virtual {v10, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d2

    const-string v2, ".*(SC-0[23]K|SCV3[89]).*"

    invoke-virtual {v10, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    goto :goto_d2

    :cond_9f
    const-string/jumbo v2, "persist.extend.brightness"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "qcomExtendBrightness":Z
    const-string/jumbo v5, "persist.display.max_brightness"

    const/16 v6, 0x3ff

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, "scale":I
    const-string/jumbo v6, "persist.sys.qcom-brightness"

    const/4 v11, -0x1

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v12, v6

    .local v12, "qcomScale":I
    if-eq v12, v11, :cond_bc

    const/4 v2, 0x1

    move v5, v12

    .end local v2    # "qcomExtendBrightness":Z
    .end local v5    # "scale":I
    .local v11, "qcomExtendBrightness":Z
    .local v13, "scale":I
    :cond_bc
    move v11, v2

    move v13, v5

    if-eqz v11, :cond_f4

    mul-int v1, v8, v13

    div-int/2addr v1, v0

    .restart local v1    # "newBrightness":I
    if-le v1, v13, :cond_c6

    move v1, v13

    .end local v1    # "newBrightness":I
    .local v14, "newBrightness":I
    :cond_c6
    move v14, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move v2, v14

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    monitor-exit p0

    return-void

    .end local v11    # "qcomExtendBrightness":Z
    .end local v12    # "qcomScale":I
    .end local v13    # "scale":I
    .end local v14    # "newBrightness":I
    :cond_d2
    :goto_d2
    mul-int/lit8 v1, v8, 0x64

    int-to-double v1, v1

    int-to-double v11, v0

    div-double/2addr v11, v3

    div-double/2addr v1, v11

    double-to-int v1, v1

    .restart local v1    # "newBrightness":I
    const-string/jumbo v2, "persist.sys.samsung.full_brightness"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e8

    int-to-double v5, v8

    const-wide/high16 v11, 0x40e4000000000000L    # 40960.0

    mul-double/2addr v5, v11

    div-double/2addr v5, v3

    double-to-int v1, v5

    .end local v1    # "newBrightness":I
    .local v11, "newBrightness":I
    :cond_e8
    move v11, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move v2, v11

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    monitor-exit p0

    return-void

    .end local v10    # "fp":Ljava/lang/String;
    .end local v11    # "newBrightness":I
    :cond_f4
    int-to-double v5, v8

    int-to-double v10, v0

    div-double/2addr v10, v3

    div-double/2addr v5, v10

    double-to-int v2, v5

    .local v2, "color":I
    if-le v2, v1, :cond_fd

    const/16 v2, 0xff

    :cond_fd
    const/4 v3, 0x5

    if-ge v2, v3, :cond_101

    const/4 v2, 0x5

    :cond_101
    and-int/2addr v1, v2

    .end local v2    # "color":I
    .local v1, "color":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int v10, v2, v1

    .end local v1    # "color":I
    .local v10, "color":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move v2, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .end local v0    # "rom_max_brightness":I
    .end local v10    # "color":I
    monitor-exit p0

    return-void

    :goto_117
    monitor-exit p0
    :try_end_118
    .catchall {:try_start_9 .. :try_end_118} :catchall_30

    throw v0
.end method

.method public setColor(I)V
    .registers 8
    .param p1, "color"    # I

    .line 119
    monitor-enter p0

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 11
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 126
    monitor-enter p0

    .line 127
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setIdleMode(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 202
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIdleMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleModeEnabled:Z

    if-eq v0, p1, :cond_43

    .line 205
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIdleModeEnabled:Z

    .line 207
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 208
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_36

    .line 210
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 214
    :cond_36
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iget v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 216
    :cond_43
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public setPowerSaveMode(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 179
    monitor-enter p0

    .line 180
    :try_start_1
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 181
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerSaveMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mPowerSaveModeEnabled:Z

    if-eq v0, p1, :cond_43

    .line 184
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mPowerSaveModeEnabled:Z

    .line 186
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 187
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_36

    .line 189
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 193
    :cond_36
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iget v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iget v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 195
    :cond_43
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public setVrMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 157
    monitor-enter p0

    .line 158
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    .line 159
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 161
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 162
    # invokes: Lcom/android/server/lights/LightsService;->getVrDisplayMode()I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 163
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 164
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 172
    :cond_1e
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public turnOff()V
    .registers 7

    .line 150
    monitor-enter p0

    .line 151
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method
