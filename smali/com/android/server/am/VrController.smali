.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 104
    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 108
    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 132
    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/VrController;IIZ)I
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$272(Lcom/android/server/am/VrController;I)I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    return p1
.end method

.method static synthetic access$276(Lcom/android/server/am/VrController;I)I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/VrController;IZ)I
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 288
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 292
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 293
    iget p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_0

    .line 295
    :cond_0
    iget p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    .line 298
    :goto_0
    iget p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 301
    if-eqz p2, :cond_2

    .line 302
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez p1, :cond_3

    .line 303
    iget p1, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2

    .line 306
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    .line 309
    :cond_3
    :goto_2
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .locals 1

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 406
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .locals 0

    .line 413
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    return-void

    .line 414
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VR thread does not belong to process"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasPersistentVrFlagSet()Z
    .locals 1

    .line 431
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inVrMode()Z
    .locals 2

    .line 422
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    if-nez p2, :cond_0

    .line 357
    const-string p1, "VrController"

    const-string p2, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return p1

    .line 362
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p1

    return p1
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    .line 382
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    .line 383
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p1

    return p1

    .line 384
    :cond_1
    :goto_0
    if-nez p3, :cond_4

    .line 385
    const-string p1, "caller is not the current top application."

    .line 386
    if-nez v0, :cond_2

    .line 387
    const-string/jumbo p1, "system not in VR mode."

    goto :goto_1

    .line 388
    :cond_2
    if-eqz v1, :cond_3

    .line 389
    const-string/jumbo p1, "system in persistent VR mode."

    .line 391
    :cond_3
    :goto_1
    const-string p2, "VrController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set VR thread, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_4
    iget p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return p1
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .locals 1

    .line 325
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_0

    .line 326
    iget p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return p1

    .line 329
    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_1

    .line 330
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 334
    :cond_1
    if-lez p1, :cond_2

    .line 335
    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    .line 336
    iget p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 338
    :cond_2
    iget p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return p1
.end method


# virtual methods
.method public onSystemReady()V
    .locals 2

    .line 139
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 154
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 155
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_0

    .line 157
    :cond_0
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne p1, v0, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    .line 172
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    .line 173
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 175
    return v0

    .line 181
    :cond_0
    const/4 v2, -0x1

    .line 182
    nop

    .line 183
    iget-object v3, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    nop

    .line 185
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 186
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 187
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 190
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0, v7}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z

    move-result v7

    .line 192
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_2

    .line 193
    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_0

    .line 195
    :cond_2
    move p1, v2

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    move v2, v0

    move-object v3, v4

    move v4, v5

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 200
    return v7

    .line 195
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string p1, "VrController"

    const-string p2, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_0
    if-nez p3, :cond_1

    .line 258
    const-string p1, "VrController"

    const-string p2, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_1
    if-eqz p1, :cond_2

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 264
    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 265
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string p1, "VrController"

    const-string p2, "VR thread cannot be set in persistent VR mode!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 223
    :cond_0
    if-nez p3, :cond_1

    .line 224
    const-string p1, "VrController"

    const-string p2, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_1
    if-eqz p1, :cond_2

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 231
    const-string p2, "VrController"

    const-string v1, "VR thread cannot be set when not in VR mode!"

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_3
    iget p2, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 235
    :goto_0
    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput p1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 236
    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .locals 1

    .line 273
    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 436
    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 440
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 441
    iget v3, p0, Lcom/android/server/am/VrController;->mVrState:I

    sget-object v4, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    sget-object v5, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000001L

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 443
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 444
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 445
    return-void
.end method
