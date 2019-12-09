.class public Lcom/android/server/custom/display/DisplayHardwareController;
.super Lcom/android/server/custom/display/LiveDisplayFeature;
.source "DisplayHardwareController.java"


# static fields
.field private static final DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

.field private static final DISPLAY_CABC:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

.field private static final DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

.field private static final DISPLAY_READING_MODE:Landroid/net/Uri;


# instance fields
.field private final mAdditionalAdjustment:[F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorAdjustment:[F

.field private final mDefaultAutoContrast:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

.field private final mMaxColor:I

.field private final mUseAutoContrast:Z

.field private final mUseCABC:Z

.field private final mUseColorAdjustment:Z

.field private final mUseColorEnhancement:Z

.field private final mUseDisplayModes:Z

.field private final mUseReaderMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "display_auto_contrast"

    .line 69
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    .line 70
    const-string v0, "display_color_adjustment"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    .line 72
    const-string v0, "display_color_enhance"

    .line 73
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    .line 74
    const-string v0, "display_low_power"

    .line 75
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    .line 76
    const-string v0, "display_reading_mode"

    .line 77
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_READING_MODE:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 60
    invoke-static {}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    .line 61
    invoke-static {}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mColorAdjustment:[F

    .line 82
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 83
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 84
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    .line 85
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1120041

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultCABC:Z

    .line 88
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 89
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    .line 90
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1120042

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 93
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 94
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    .line 95
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x112003f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    .line 98
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 99
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    .line 101
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 102
    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseDisplayModes:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 105
    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseReaderMode:Z

    .line 107
    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getDisplayColorCalibrationMax()I

    move-result p1

    iput p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/DisplayHardwareController;->copyColors([F[F)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    .line 113
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/display/DisplayHardwareController;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/custom/display/DisplayHardwareController;)Lcom/android/internal/custom/hardware/LineageHardwareManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/custom/display/DisplayHardwareController;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->screenRefresh()V

    return-void
.end method

.method private declared-synchronized animateDisplayColor([F)V
    .locals 10

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v0

    .line 286
    const/4 v1, 0x3

    new-array v2, v1, [F

    const/4 v3, 0x0

    aget v4, v0, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v4

    const/4 v5, 0x2

    aget v0, v0, v5

    int-to-float v0, v0

    iget v6, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    aput v0, v2, v5

    .line 291
    aget v0, v2, v3

    aget v6, p1, v3

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    aget v0, v2, v4

    aget v6, p1, v4

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    aget v0, v2, v5

    aget v6, p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    .line 294
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    const v0, 0x443b8000    # 750.0f

    :try_start_1
    aget v6, v2, v3

    aget v7, p1, v3

    sub-float/2addr v6, v7

    .line 299
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aget v7, v2, v4

    aget v8, p1, v4

    sub-float/2addr v7, v8

    .line 300
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 298
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aget v7, v2, v5

    aget v8, p1, v5

    sub-float/2addr v7, v8

    .line 301
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 298
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v0, v6

    float-to-long v6, v0

    .line 303
    sget-boolean v0, Lcom/android/server/custom/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "LiveDisplay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animateDisplayColor current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " targetColors="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 310
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 313
    :cond_2
    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    new-array v1, v1, [F

    invoke-direct {v0, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 315
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 316
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/custom/display/DisplayHardwareController$1;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/DisplayHardwareController$1;-><init>(Lcom/android/server/custom/display/DisplayHardwareController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private copyColors([F[F)V
    .locals 2

    .line 506
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    .line 507
    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p2, v0

    .line 508
    const/4 v0, 0x1

    aget v1, p1, v0

    aput v1, p2, v0

    .line 509
    const/4 v0, 0x2

    aget p1, p1, v0

    aput p1, p2, v0

    .line 511
    :cond_0
    return-void
.end method

.method private static getDefaultAdjustment()[F
    .locals 1

    .line 502
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private parseColorAdjustment(Ljava/lang/String;[F)Z
    .locals 3

    .line 375
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 377
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 382
    :cond_1
    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, p2, v0

    .line 383
    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, p2, v1

    .line 384
    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    aput p1, p2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    nop

    .line 391
    invoke-direct {p0, p2}, Lcom/android/server/custom/display/DisplayHardwareController;->validateColors([F)Z

    move-result p1

    return p1

    .line 385
    :catch_0
    move-exception p1

    .line 386
    const-string p2, "LiveDisplay"

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    return v0

    .line 378
    :cond_2
    :goto_1
    return v0
.end method

.method private saveColorAdjustmentString([F)V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 494
    const-string p1, "display_color_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private screenRefresh()V
    .locals 5

    .line 342
    :try_start_0
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    const/16 v2, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string v1, "LiveDisplay"

    const-string v2, "Failed to refresh screen"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :goto_0
    return-void
.end method

.method private updateAutoContrast()V
    .locals 3

    .line 231
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->set(IZ)Z

    .line 235
    return-void
.end method

.method private updateCABCMode()V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->set(IZ)Z

    .line 256
    return-void
.end method

.method private declared-synchronized updateColorAdjustment()V
    .locals 4

    monitor-enter p0

    .line 259
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 260
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, v1, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->copyColors([F[F)V

    .line 266
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 267
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 268
    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 270
    sget-boolean v1, Lcom/android/server/custom/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 271
    const-string v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateColorAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->validateColors([F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->animateDisplayColor([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_2
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateColorEnhancement()V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/4 v1, 0x2

    .line 245
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isLowPowerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 244
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->set(IZ)Z

    .line 246
    return-void
.end method

.method private declared-synchronized updateHardware()V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateCABCMode()V

    .line 186
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateAutoContrast()V

    .line 187
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateColorEnhancement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateColors([F)Z
    .locals 5

    .line 361
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    .line 366
    aget v1, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 362
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 210
    const-string v0, "DisplayHardwareController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseDisplayModes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseReaderMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseReaderMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 218
    const-string v0, "  DisplayHardwareController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAdditionalAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hardware setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    .line 145
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_1

    .line 148
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 150
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_2

    .line 151
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 153
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_3

    .line 154
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 156
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-eqz v0, :cond_4

    .line 157
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 159
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseReaderMode:Z

    if-eqz v0, :cond_5

    .line 160
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 162
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseReaderMode:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method getColorAdjustment()[F
    .locals 2

    .line 470
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    return-object v0

    .line 473
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 474
    const-string v1, "display_color_adjustment"

    invoke-virtual {p0, v1}, Lcom/android/server/custom/display/DisplayHardwareController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->parseColorAdjustment(Ljava/lang/String;[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    invoke-static {}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 477
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 479
    :cond_1
    return-object v0
.end method

.method getDefaultAutoContrast()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    return v0
.end method

.method getDefaultCABC()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultCABC:Z

    return v0
.end method

.method getDefaultColorEnhancement()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    return v0
.end method

.method hasColorAdjustment()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    return v0
.end method

.method isAutoContrastEnabled()Z
    .locals 2

    .line 430
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_0

    const-string v0, "display_auto_contrast"

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    .line 431
    invoke-virtual {p0, v0, v1}, Lcom/android/server/custom/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0
.end method

.method isCABCEnabled()Z
    .locals 2

    .line 443
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_0

    const-string v0, "display_low_power"

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultCABC:Z

    .line 444
    invoke-virtual {p0, v0, v1}, Lcom/android/server/custom/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0
.end method

.method isColorEnhancementEnabled()Z
    .locals 2

    .line 456
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_0

    const-string v0, "display_color_enhance"

    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/android/server/custom/display/DisplayHardwareController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    .line 168
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 169
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateCABCMode()V

    .line 171
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateAutoContrast()V

    .line 174
    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateColorEnhancement()V

    .line 177
    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 178
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->copyColors([F[F)V

    .line 179
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_7
    monitor-exit p0

    return-void

    .line 167
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .locals 2

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v1, :cond_2

    .line 126
    sget-object v1, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v1, :cond_3

    .line 129
    sget-object v1, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseReaderMode:Z

    if-eqz v1, :cond_4

    .line 132
    sget-object v1, Lcom/android/server/custom/display/DisplayHardwareController;->DISPLAY_READING_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 136
    return-void

    .line 139
    :cond_5
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->registerSettings([Landroid/net/Uri;)V

    .line 140
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateHardware()V

    .line 194
    return-void
.end method

.method declared-synchronized setAdditionalAdjustment([F)Z
    .locals 4

    monitor-enter p0

    .line 400
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    monitor-exit p0

    return v1

    .line 404
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/server/custom/display/DisplayHardwareController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdditionalAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/custom/display/DisplayHardwareController;->copyColors([F[F)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/custom/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 414
    :cond_2
    monitor-exit p0

    return v1

    .line 399
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setAutoContrastEnabled(Z)Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_0

    .line 436
    const/4 p1, 0x0

    return p1

    .line 438
    :cond_0
    const-string v0, "display_auto_contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    const/4 p1, 0x1

    return p1
.end method

.method setCABCEnabled(Z)Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_0

    .line 449
    const/4 p1, 0x0

    return p1

    .line 451
    :cond_0
    const-string v0, "display_low_power"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    const/4 p1, 0x1

    return p1
.end method

.method setColorAdjustment([F)Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    .line 488
    const/4 p1, 0x1

    return p1

    .line 485
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method setColorEnhancementEnabled(Z)Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/android/server/custom/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_0

    .line 463
    const/4 p1, 0x0

    return p1

    .line 465
    :cond_0
    const-string v0, "display_color_enhance"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    const/4 p1, 0x1

    return p1
.end method
