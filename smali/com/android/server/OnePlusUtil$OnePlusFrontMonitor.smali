.class public Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusFrontMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;,
        Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor; = null

.field private static final TAG:Ljava/lang/String; = "OnePlusFrontMonitor"


# instance fields
.field private activityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I

.field private packageListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 241
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->DEBUG:Z

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;
    .registers 1

    .line 255
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    if-nez v0, :cond_b

    .line 256
    new-instance v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    .line 258
    :cond_b
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    return-object v0
.end method

.method private notifyActivityChanged()V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;

    .line 339
    .local v1, "al":Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;
    iget-object v2, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;->frontActivityChanged(Ljava/lang/String;)V

    .line 340
    .end local v1    # "al":Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;
    goto :goto_6

    .line 341
    :cond_18
    return-void
.end method

.method private notifyPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "lpackageName"    # Ljava/lang/String;
    .param p5, "luid"    # I
    .param p6, "lpid"    # I

    .line 332
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;

    .line 333
    .local v1, "pl":Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;->frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    .line 334
    .end local v1    # "pl":Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;
    goto :goto_6

    .line 335
    :cond_1d
    return-void
.end method


# virtual methods
.method public getFrontActivityName()Ljava/lang/String;
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 290
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrontPackageName()Ljava/lang/String;
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrontUid()I
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mUid:I

    monitor-exit v0

    return v1

    .line 302
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public registerFrontActivityListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;)V
    .registers 4
    .param p1, "al"    # Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;

    .line 313
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 315
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_10
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V
    .registers 4
    .param p1, "pl"    # Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;

    .line 306
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 308
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_10
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 262
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iput-object p1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 265
    iget-object v6, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mUid:I

    iget v8, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPid:I

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->notifyPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    .line 266
    iput-object p2, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    .line 267
    iput p3, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mUid:I

    .line 268
    iput p4, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPid:I

    .line 270
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_77

    .line 271
    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->notifyActivityChanged()V

    .line 272
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->DEBUG:Z

    if-eqz v0, :cond_76

    .line 273
    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontActivityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_76
    return-void

    .line 270
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public unregisterFrontActivityListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;)V
    .registers 4
    .param p1, "al"    # Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;

    .line 326
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V
    .registers 4
    .param p1, "pl"    # Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;

    .line 320
    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
