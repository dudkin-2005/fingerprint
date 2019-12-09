.class interface abstract Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;
.super Ljava/lang/Object;
.source "LineageHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/LineageHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LineageHardwareInterface"
.end annotation


# virtual methods
.method public abstract get(I)Z
.end method

.method public abstract getColorBalance()I
.end method

.method public abstract getColorBalanceMax()I
.end method

.method public abstract getColorBalanceMin()I
.end method

.method public abstract getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
.end method

.method public abstract getDefaultDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
.end method

.method public abstract getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
.end method

.method public abstract getDisplayColorCalibration()[I
.end method

.method public abstract getDisplayModes()[Lcom/android/internal/custom/hardware/DisplayMode;
.end method

.method public abstract getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
.end method

.method public abstract getPictureAdjustmentRanges()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSupportedFeatures()I
.end method

.method public abstract isSunlightEnhancementSelfManaged()Z
.end method

.method public abstract requireAdaptiveBacklightForSunlightEnhancement()Z
.end method

.method public abstract set(IZ)Z
.end method

.method public abstract setColorBalance(I)Z
.end method

.method public abstract setDisplayColorCalibration([I)Z
.end method

.method public abstract setDisplayMode(Lcom/android/internal/custom/hardware/DisplayMode;Z)Z
.end method

.method public abstract setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z
.end method
