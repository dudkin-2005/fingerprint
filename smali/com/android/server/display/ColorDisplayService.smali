.class public final Lcom/android/server/display/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;,
        Lcom/android/server/display/ColorDisplayService$CustomAutoMode;,
        Lcom/android/server/display/ColorDisplayService$AutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private hasHWC2Support:Z

.field private mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mIsAdaptiveBrightness:Z

.field private mMatrixNight:[F

.field private mNightCustomAdaptiveBrightness:I

.field private mNightCustomManualBrightness:I

.field private mNightLowerBrightnessMode:I

.field private mPm:Landroid/os/PowerManager;

.field private mPreviousUserBrightness:I

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 77
    sget-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 83
    new-instance v0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/ColorDisplayService$1;)V

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    .line 91
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->hasHWC2Support:Z

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x112009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/ColorDisplayService;->hasHWC2Support:Z

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/ColorDisplayService;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;I)Z
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/ColorDisplayService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/display/ColorDisplayService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object p0
.end method

.method private applyTint(Z)V
    .locals 5

    .line 416
    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->hasHWC2Support:Z

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 425
    :cond_1
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 426
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 429
    :goto_0
    if-eqz p1, :cond_3

    .line 430
    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_1

    .line 432
    :cond_3
    sget-object p1, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 433
    if-nez v2, :cond_4

    sget-object v2, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    :cond_4
    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 432
    invoke-static {p1, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 434
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 435
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 436
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000d

    .line 435
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/display/ColorDisplayService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/ColorDisplayService$2;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 444
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/display/ColorDisplayService$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/server/display/ColorDisplayService$3;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 466
    :goto_1
    return-void
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 4

    .line 517
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 518
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 517
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 521
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 4

    .line 502
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 503
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 502
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 506
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 2

    .line 201
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1
.end method

.method private onUserChanged(I)V
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->tearDown()V

    .line 175
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 177
    iget p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-eq p1, v2, :cond_3

    .line 178
    iget p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, p1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 179
    new-instance p1, Lcom/android/server/display/ColorDisplayService$1;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/display/ColorDisplayService$1;-><init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 192
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 194
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz p1, :cond_3

    .line 195
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 198
    :cond_3
    :goto_1
    return-void
.end method

.method private setBrightness(Ljava/lang/Boolean;)V
    .locals 3

    .line 289
    if-nez p1, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->updateBrightnessModeValues()V

    .line 298
    :cond_1
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightLowerBrightnessMode:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mPm:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 304
    const-string/jumbo p1, "screen_brightness"

    .line 305
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsAdaptiveBrightness:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomAdaptiveBrightness:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomManualBrightness:I

    :goto_0
    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 304
    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 308
    :cond_4
    const-string/jumbo p1, "screen_brightness"

    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mPreviousUserBrightness:I

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 312
    :goto_1
    return-void

    .line 299
    :cond_5
    :goto_2
    return-void
.end method

.method private setCoefficientMatrix(Landroid/content/Context;Z)V
    .locals 2

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 403
    const p2, 0x107003f

    goto :goto_0

    .line 404
    :cond_0
    const p2, 0x1070040

    .line 402
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 405
    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x9

    if-ge p2, v0, :cond_1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p2

    .line 405
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 408
    :cond_1
    return-void
.end method

.method private setMatrix(I[F)V
    .locals 7

    .line 475
    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 476
    const-string p1, "ColorDisplayService"

    const-string p2, "The display transformation matrix must be 4x4"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 482
    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 483
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget v2, v2, v1

    mul-float/2addr v2, v0

    int-to-float p1, p1

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    .line 485
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    add-float/2addr v3, v4

    .line 487
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x7

    aget v4, v4, v6

    mul-float/2addr p1, v4

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/16 v4, 0x8

    aget p1, p1, v4

    add-float/2addr v0, p1

    .line 489
    aput v2, p2, v1

    .line 490
    aput v3, p2, v5

    .line 491
    const/16 p1, 0xa

    aput v0, p2, p1

    .line 492
    return-void
.end method

.method private setUp()V
    .locals 3

    .line 205
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 209
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 221
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 224
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onAutoModeChanged(I)V

    .line 227
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onActivated(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method private tearDown()V
    .locals 3

    .line 233
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 237
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 242
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 247
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 249
    :cond_2
    return-void
.end method


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .locals 0

    .line 395
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p1}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 396
    return-void
.end method

.method public onActivated(Z)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 254
    :cond_0
    const-string v0, "ColorDisplayService"

    if-eqz p1, :cond_1

    const-string v1, "Turning on night display"

    goto :goto_0

    :cond_1
    const-string v1, "Turning off night display"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 258
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onActivated(Z)V

    .line 262
    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 264
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->setBrightness(Ljava/lang/Boolean;)V

    .line 266
    :cond_3
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3

    .line 270
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 277
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 278
    new-instance p1, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 280
    new-instance p1, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 283
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz p1, :cond_3

    .line 284
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStart()V

    .line 286
    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    .line 124
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mPm:Landroid/os/PowerManager;

    .line 128
    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    .line 129
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    .line 132
    iget p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez p1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 136
    :cond_1
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 371
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 372
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    .line 362
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 366
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    .line 353
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 2

    .line 376
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->hasHWC2Support:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 386
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 388
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 389
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    .line 390
    :cond_2
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 389
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I[F)Z

    .line 391
    return-void

    .line 377
    :cond_3
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 120
    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 142
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 158
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 159
    const/16 p1, -0x2710

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 152
    return-void
.end method

.method public updateBrightnessModeValues()V
    .locals 5

    .line 315
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mPm:Landroid/os/PowerManager;

    .line 319
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iget v3, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 317
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorDisplayService;->mPreviousUserBrightness:I

    .line 321
    const-string/jumbo v1, "screen_brightness_mode"

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 325
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsAdaptiveBrightness:Z

    .line 327
    const-string v1, "night_brightness_value"

    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightLowerBrightnessMode:I

    .line 330
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightLowerBrightnessMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 343
    :pswitch_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomAdaptiveBrightness:I

    .line 344
    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomManualBrightness:I

    .line 345
    goto :goto_1

    .line 339
    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomAdaptiveBrightness:I

    .line 340
    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomManualBrightness:I

    .line 341
    goto :goto_1

    .line 335
    :pswitch_2
    iput v3, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomAdaptiveBrightness:I

    .line 336
    iput v3, p0, Lcom/android/server/display/ColorDisplayService;->mNightCustomManualBrightness:I

    .line 337
    nop

    .line 349
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
