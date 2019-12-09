.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mMaxGamma:F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mRebootSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V
    .registers 9
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"    # [F
    .param p3, "backlight"    # [I
    .param p4, "maxGamma"    # F

    .line 613
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 614
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v0, p3

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Nits and backlight arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 616
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Nits and backlight arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 618
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v1, "nits"

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 620
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const-string v1, "backlight"

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 623
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 624
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 625
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 626
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 629
    array-length v0, p2

    .line 630
    .local v0, "N":I
    new-array v1, v0, [F

    .line 631
    .local v1, "normalizedBacklight":[F
    nop

    .line 631
    .local v2, "i":I
    :goto_40
    if-ge v2, v0, :cond_4d

    .line 632
    aget v3, p3, v2

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v3

    aput v3, v1, v2

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 635
    .end local v2    # "i":I
    :cond_4d
    invoke-static {p2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 636
    invoke-static {v1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 638
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 642
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 643
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 644
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRebootSpline:Landroid/util/Spline;

    .line 645
    return-void
.end method

.method private computeSpline()V
    .registers 12

    .line 778
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 779
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 780
    .local v1, "defaultLux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [F

    .line 781
    .local v8, "defaultNits":[F
    array-length v2, v8

    new-array v9, v2, [F

    .line 782
    .local v9, "defaultBacklight":[F
    const/4 v10, 0x0

    move v2, v10

    .local v2, "i":I
    :goto_14
    array-length v3, v9

    if-ge v2, v3, :cond_24

    .line 783
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v4, v8, v2

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v9, v2

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 785
    .end local v2    # "i":I
    :cond_24
    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, v1

    move-object v3, v9

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200([F[FFFFF)Landroid/util/Pair;

    move-result-object v2

    .line 787
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 788
    .local v3, "lux":[F
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    .line 789
    .local v4, "backlight":[F
    array-length v5, v4

    new-array v5, v5, [F

    .line 790
    .local v5, "nits":[F
    nop

    .local v10, "i":I
    :goto_3e
    move v6, v10

    .end local v10    # "i":I
    .local v6, "i":I
    array-length v7, v5

    if-ge v6, v7, :cond_4f

    .line 791
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v10, v4, v6

    invoke-virtual {v7, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    aput v7, v5, v6

    .line 790
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "i":I
    .restart local v10    # "i":I
    goto :goto_3e

    .line 793
    .end local v10    # "i":I
    :cond_4f
    invoke-static {v3, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 794
    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z
    invoke-static {v3, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300([F[F)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 795
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRebootSpline:Landroid/util/Spline;

    .line 797
    :cond_5f
    return-void
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"    # F

    .line 800
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 801
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 802
    .local v1, "spline":Landroid/util/Spline;
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 5
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 698
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 705
    .local v0, "unadjustedBrightness":F
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F
    invoke-static {v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100(FFF)F

    move-result v1

    .line 712
    .local v1, "adjustment":F
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 713
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 714
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 715
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 716
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 720
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 727
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 728
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 729
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 731
    :cond_12
    return-void
.end method

.method public convertToNits(I)F
    .registers 4
    .param p1, "backlight"    # I

    .line 693
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 766
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRebootSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRebootSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 672
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 665
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 666
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 667
    .local v1, "backlight":F
    return v1
.end method

.method public getCurrentConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 6

    .line 750
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 751
    .local v0, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRebootSpline:Landroid/util/Spline;

    invoke-virtual {v1}, Landroid/util/Spline;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 752
    .local v1, "lux":[F
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRebootSpline:Landroid/util/Spline;

    invoke-virtual {v2}, Landroid/util/Spline;->getCurve()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 753
    .local v2, "nits":[F
    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z
    invoke-static {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300([F[F)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 754
    const-string v3, "BrightnessMappingStrategy"

    const-string v4, "ValidMapping,return Current config"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 756
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    .line 757
    .local v3, "config":Landroid/hardware/display/BrightnessConfiguration;
    return-object v3

    .line 759
    .end local v3    # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_2e
    const-string v3, "BrightnessMappingStrategy"

    const-string v4, "InValidMapping,return Default config"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v3
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 745
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 735
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 3

    .line 740
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"    # F

    .line 677
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 678
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 679
    const/4 v0, 0x0

    return v0

    .line 686
    :cond_10
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 687
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 649
    if-nez p1, :cond_4

    .line 650
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 652
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 653
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_e
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 659
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 660
    const/4 v0, 0x1

    return v0
.end method
