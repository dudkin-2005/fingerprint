.class Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;
.super Ljava/lang/Object;
.source "LineageHardwareService.java"

# interfaces
.implements Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/LineageHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyLineageHardware"
.end annotation


# instance fields
.field private final LEVEL_COLOR_MATRIX_CALIB:I

.field private final LEVEL_COLOR_MATRIX_READING:I

.field private final MATRIX_GRAYSCALE:[F

.field private final MATRIX_NORMAL:[F

.field private final MAX:I

.field private final MIN:I

.field private mCurColors:[I

.field private mDTMService:Lcom/android/server/display/DisplayTransformManager;

.field private mHasHWC2Support:Z

.field private mReadingEnhancementEnabled:Z

.field private mSupportedFeatures:I

.field final synthetic this$0:Lcom/android/server/custom/LineageHardwareService;


# direct methods
.method public constructor <init>(Lcom/android/server/custom/LineageHardwareService;)V
    .locals 3

    .line 127
    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MIN:I

    .line 95
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MAX:I

    .line 101
    const/16 v1, 0x10

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MATRIX_GRAYSCALE:[F

    .line 109
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MATRIX_NORMAL:[F

    .line 116
    const/16 v2, 0x65

    iput v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->LEVEL_COLOR_MATRIX_CALIB:I

    .line 117
    const/16 v2, 0xc9

    iput v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->LEVEL_COLOR_MATRIX_READING:I

    .line 122
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    .line 125
    iput v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 128
    invoke-static {p1}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x112009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    .line 130
    invoke-static {}, Lcom/android/internal/custom/hardware/AdaptiveBacklight;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayColorCalibration;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 136
    :cond_2
    invoke-static {}, Lcom/android/internal/custom/hardware/ReadingEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 138
    :cond_3
    invoke-static {}, Lcom/android/internal/custom/hardware/SunlightEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 140
    :cond_4
    invoke-static {}, Lcom/android/internal/custom/hardware/AutoContrast;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 141
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 142
    :cond_5
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayModeControl;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 143
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 144
    :cond_6
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorBalance;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 145
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 146
    :cond_7
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 148
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz p1, :cond_9

    .line 149
    const-class p1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayTransformManager;

    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/DisplayTransformManager;

    .line 150
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 151
    iget p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 153
    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private rgbToMatrix([I)[F
    .locals 6

    .line 231
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 233
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 235
    aget v3, p1, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    .line 236
    aput v4, p1, v2

    goto :goto_1

    .line 237
    :cond_0
    aget v3, p1, v2

    if-gez v3, :cond_1

    .line 238
    aput v1, p1, v2

    .line 240
    :cond_1
    :goto_1
    mul-int/lit8 v3, v2, 0x5

    aget v4, p1, v2

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v0, v3

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_2
    const/16 p1, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    .line 244
    return-object v0
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3

    .line 204
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 209
    :try_start_0
    array-length p2, p1

    new-array p2, p2, [I

    .line 210
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 211
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-object p2

    .line 214
    :catch_0
    move-exception p1

    .line 217
    return-object v0

    .line 205
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public get(I)Z
    .locals 3

    .line 160
    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean feature"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 p1, 0x0

    return p1

    .line 166
    :pswitch_0
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorEnhancement;->isEnabled()Z

    move-result p1

    return p1

    .line 162
    :pswitch_1
    invoke-static {}, Lcom/android/internal/custom/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result p1

    return p1

    .line 168
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz p1, :cond_1

    .line 169
    iget-boolean p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mReadingEnhancementEnabled:Z

    return p1

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/internal/custom/hardware/ReadingEnhancement;->isEnabled()Z

    move-result p1

    return p1

    .line 164
    :cond_2
    invoke-static {}, Lcom/android/internal/custom/hardware/AutoContrast;->isEnabled()Z

    move-result p1

    return p1

    .line 172
    :cond_3
    invoke-static {}, Lcom/android/internal/custom/hardware/SunlightEnhancement;->isEnabled()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColorBalance()I
    .locals 1

    .line 307
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorBalance;->getValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 1

    .line 303
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorBalance;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 1

    .line 299
    invoke-static {}, Lcom/android/internal/custom/hardware/ColorBalance;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 1

    .line 287
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayModeControl;->getCurrentMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 1

    .line 291
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayModeControl;->getDefaultMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 1

    .line 316
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getDefaultHSIC()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 6

    .line 248
    iget-boolean v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 250
    :goto_0
    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 254
    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 255
    const/4 v3, 0x0

    aget v4, v0, v3

    aput v4, v1, v3

    .line 256
    const/4 v4, 0x1

    aget v5, v0, v4

    aput v5, v1, v4

    .line 257
    const/4 v4, 0x2

    aget v0, v0, v4

    aput v0, v1, v4

    .line 258
    nop

    .line 259
    iget-boolean v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v3

    :goto_1
    aput v3, v1, v2

    .line 260
    const/4 v0, 0x4

    .line 261
    iget-boolean v2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v2

    :goto_2
    aput v2, v1, v0

    .line 262
    return-object v1

    .line 251
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid color calibration string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayModes()[Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 1

    .line 283
    invoke-static {}, Lcom/android/internal/custom/hardware/DisplayModeControl;->getAvailableModes()[Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 1

    .line 314
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getHSIC()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getPictureAdjustmentRanges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 321
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/Range;

    .line 322
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getHueRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 323
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 324
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 325
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 326
    invoke-static {}, Lcom/android/internal/custom/hardware/PictureAdjustment;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 321
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    return v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 1

    .line 279
    invoke-static {}, Lcom/android/internal/custom/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result v0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .line 275
    invoke-static {}, Lcom/android/internal/custom/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 2

    .line 180
    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean feature"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 p1, 0x0

    return p1

    .line 186
    :pswitch_0
    invoke-static {p2}, Lcom/android/internal/custom/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result p1

    return p1

    .line 182
    :pswitch_1
    invoke-static {p2}, Lcom/android/internal/custom/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result p1

    return p1

    .line 188
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz p1, :cond_2

    .line 189
    iput-boolean p2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mReadingEnhancementEnabled:Z

    .line 190
    iget-object p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/DisplayTransformManager;

    const/16 v0, 0xc9

    .line 191
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MATRIX_GRAYSCALE:[F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->MATRIX_NORMAL:[F

    .line 190
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 192
    const/4 p1, 0x1

    return p1

    .line 194
    :cond_2
    invoke-static {p2}, Lcom/android/internal/custom/hardware/ReadingEnhancement;->setEnabled(Z)Z

    move-result p1

    return p1

    .line 184
    :cond_3
    invoke-static {p2}, Lcom/android/internal/custom/hardware/AutoContrast;->setEnabled(Z)Z

    move-result p1

    return p1

    .line 196
    :cond_4
    invoke-static {p2}, Lcom/android/internal/custom/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColorBalance(I)Z
    .locals 0

    .line 311
    invoke-static {p1}, Lcom/android/internal/custom/hardware/ColorBalance;->setValue(I)Z

    move-result p1

    return p1
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 2

    .line 266
    iget-boolean v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mHasHWC2Support:Z

    if-eqz v0, :cond_0

    .line 267
    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    .line 268
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/DisplayTransformManager;

    const/16 v1, 0x65

    invoke-direct {p0, p1}, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->rgbToMatrix([I)[F

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 269
    const/4 p1, 0x1

    return p1

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/custom/LineageHardwareService$LegacyLineageHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/custom/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setDisplayMode(Lcom/android/internal/custom/hardware/DisplayMode;Z)Z
    .locals 0

    .line 295
    invoke-static {p1, p2}, Lcom/android/internal/custom/hardware/DisplayModeControl;->setMode(Lcom/android/internal/custom/hardware/DisplayMode;Z)Z

    move-result p1

    return p1
.end method

.method public setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z
    .locals 0

    .line 318
    invoke-static {p1}, Lcom/android/internal/custom/hardware/PictureAdjustment;->setHSIC(Lcom/android/internal/custom/hardware/HSIC;)Z

    move-result p1

    return p1
.end method
