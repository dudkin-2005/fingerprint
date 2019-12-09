.class public Lcom/android/server/custom/display/ColorTemperatureController;
.super Lcom/android/server/custom/display/LiveDisplayFeature;
.source "ColorTemperatureController.java"


# static fields
.field private static final NIGHT_DISPLAY_COLOR_TEMPERATURE:Landroid/net/Uri;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mColorBalanceCurve:[D

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

.field private final mDefaultDayTemperature:I

.field private final mDisplayHardware:Lcom/android/server/custom/display/DisplayHardwareController;

.field private final mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

.field private mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mUseColorBalance:Z

.field private final mUseTemperatureAdjustment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "night_display_color_temperature"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/display/ColorTemperatureController;->NIGHT_DISPLAY_COLOR_TEMPERATURE:Landroid/net/Uri;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/custom/display/DisplayHardwareController;)V
    .locals 6

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 67
    iput-object p3, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mDisplayHardware:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 68
    new-instance p2, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p2, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    .line 69
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 71
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 72
    const/16 p2, 0x800

    invoke-virtual {p1, p2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseColorBalance:Z

    .line 73
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getColorBalanceRange()Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 75
    iget-boolean p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseColorBalance:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mDisplayHardware:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 76
    invoke-virtual {p1}, Lcom/android/server/custom/display/DisplayHardwareController;->hasColorAdjustment()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    .line 78
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e002c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 81
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result p1

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result p1

    int-to-double v4, p1

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/custom/MathUtils;->powerCurve(DDD)[D

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorBalanceCurve:[D

    .line 85
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/display/ColorTemperatureController;)Lcom/android/internal/custom/hardware/LineageHardwareManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    return-object p0
.end method

.method private declared-synchronized animateColorBalance(I)V
    .locals 6

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getColorBalance()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-ne v0, p1, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    const/4 v1, 0x5

    sub-int v2, v0, p1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    .line 118
    sget-boolean v3, Lcom/android/server/custom/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 119
    const-string v3, "LiveDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateDisplayColor current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 125
    iget-object v3, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 128
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput p1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 129
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/custom/display/ColorTemperatureController$1;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/ColorTemperatureController$1;-><init>(Lcom/android/server/custom/display/ColorTemperatureController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private mapColorTemperatureToBalance(I)I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorBalanceCurve:[D

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/custom/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v0

    .line 151
    iget-object p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 152
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    double-to-float v0, v0

    .line 151
    invoke-static {p1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private declared-synchronized updateColorTemperature()V
    .locals 5

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/custom/display/ColorTemperatureController;->getMode()I

    move-result v0

    .line 157
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 159
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/ColorTemperatureController;->mapColorTemperatureToBalance(I)I

    move-result v1

    .line 161
    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set color balance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (temperature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, v1}, Lcom/android/server/custom/display/ColorTemperatureController;->animateColorBalance(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/util/custom/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mDisplayHardware:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-virtual {v2, v1}, Lcom/android/server/custom/display/DisplayHardwareController;->setAdditionalAdjustment([F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    sget-boolean v1, Lcom/android/server/custom/display/ColorTemperatureController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust display temperature to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "K"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_2
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 99
    const-string v0, "  ColorTemperatureController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v0, :cond_0

    .line 91
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 93
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    return p1
.end method

.method protected onScreenStateChanged()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/custom/display/ColorTemperatureController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/custom/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/server/custom/display/ColorTemperatureController;->updateColorTemperature()V

    .line 191
    :goto_0
    return-void
.end method

.method protected declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/custom/display/ColorTemperatureController;->updateColorTemperature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .locals 3

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/android/server/custom/display/ColorTemperatureController;->NIGHT_DISPLAY_COLOR_TEMPERATURE:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/ColorTemperatureController;->registerSettings([Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/server/custom/display/ColorTemperatureController;->updateColorTemperature()V

    .line 182
    return-void
.end method
