.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)F
    .registers 2
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(FFF)F
    .registers 4
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .registers 7
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([F[F)Z
    .registers 3
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 12
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 54
    const v0, 0x1070011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 56
    .local v0, "luxLevels":[F
    const v1, 0x1070010

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 58
    .local v1, "brightnessLevelsBacklight":[I
    const v2, 0x107000e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 60
    .local v2, "brightnessLevelsNits":[F
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 64
    .local v4, "autoBrightnessAdjustmentMaxGamma":F
    const v5, 0x1070041

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 66
    .local v5, "nitsRange":[F
    const v6, 0x107003f

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 68
    .local v7, "backlightRange":[I
    sget v8, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v9, 0x3ff

    if-ne v8, v9, :cond_41

    .line 69
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .end local v7    # "backlightRange":[I
    .local v6, "backlightRange":[I
    :goto_40
    goto :goto_49

    .line 72
    .end local v6    # "backlightRange":[I
    .restart local v7    # "backlightRange":[I
    :cond_41
    const v6, 0x1070040

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    goto :goto_40

    .line 75
    .end local v7    # "backlightRange":[I
    .restart local v6    # "backlightRange":[I
    :goto_49
    invoke-static {v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 76
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 77
    const v7, 0x10e0098

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 81
    .local v7, "minimumBacklight":I
    const/16 v8, 0xff

    .line 82
    .local v8, "maximumBacklight":I
    sget v10, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v10, v9, :cond_6a

    .line 83
    const v9, 0x10e0096

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    goto :goto_71

    .line 86
    :cond_6a
    const v9, 0x10e0095

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 90
    :goto_71
    const/4 v9, 0x0

    aget v9, v6, v9

    if-gt v9, v7, :cond_7c

    array-length v9, v6

    sub-int/2addr v9, v3

    aget v3, v6, v9

    if-ge v3, v8, :cond_83

    .line 92
    :cond_7c
    const-string v3, "BrightnessMappingStrategy"

    const-string v9, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_83
    new-instance v3, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 96
    .local v3, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v3, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 97
    new-instance v9, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v10

    invoke-direct {v9, v10, v5, v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v9

    .line 99
    .end local v3    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v7    # "minimumBacklight":I
    .end local v8    # "maximumBacklight":I
    :cond_95
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 100
    new-instance v3, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v3

    .line 103
    :cond_a1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static findInsertionPoint([FF)I
    .registers 4
    .param p0, "arr"    # [F
    .param p1, "val"    # F

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 299
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_b

    .line 300
    return v0

    .line 298
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    :cond_e
    array-length v0, p0

    return v0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 12
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "userLux"    # F
    .param p3, "userBrightness"    # F
    .param p4, "adjustment"    # F
    .param p5, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 385
    move-object v0, p0

    .line 386
    .local v0, "newLux":[F
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 390
    .local v1, "newBrightness":[F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p4, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    .line 391
    neg-float v4, p4

    invoke-static {p5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 396
    .local v4, "gamma":F
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_26

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v5, v1

    if-ge v2, v5, :cond_26

    .line 398
    aget v5, v1, v2

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v2

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 404
    .end local v2    # "i":I
    :cond_26
    cmpl-float v2, p2, v3

    if-eqz v2, :cond_38

    .line 405
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 407
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 408
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 416
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_38
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 117
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 118
    .local v0, "N":I
    new-array v1, v0, [F

    .line 119
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 120
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 122
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 5
    .param p0, "lux"    # [I

    .line 109
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 110
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 111
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 113
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .registers 8
    .param p0, "maxGamma"    # F
    .param p1, "desiredBrightness"    # F
    .param p2, "currentBrightness"    # F

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 359
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_39

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_14

    goto :goto_39

    .line 362
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1c

    .line 363
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3b

    .line 365
    :cond_1c
    cmpl-float v2, p1, v3

    if-nez v2, :cond_23

    .line 366
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 369
    :cond_23
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 371
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_3b

    .line 360
    :cond_39
    :goto_39
    sub-float v0, p1, p2

    .line 373
    :goto_3b
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 380
    return v0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 9
    .param p0, "luxLevels"    # [F
    .param p1, "brightnessLevels"    # [F
    .param p2, "lux"    # F
    .param p3, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 266
    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 269
    .local v0, "idx":I
    array-length v1, p0

    if-ne v0, v1, :cond_1a

    .line 270
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 271
    .local v1, "newLuxLevels":[F
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 272
    .local v2, "newBrightnessLevels":[F
    aput p2, v1, v0

    .line 273
    aput p3, v2, v0

    goto :goto_4d

    .line 274
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1a
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2d

    .line 275
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 276
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 277
    .restart local v2    # "newBrightnessLevels":[F
    aput p3, v2, v0

    goto :goto_4d

    .line 279
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_2d
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 280
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    aput p2, v1, v0

    .line 282
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 283
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    aput p3, v2, v0

    .line 287
    :goto_4d
    invoke-static {v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 288
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .registers 9
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 127
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    array-length v1, p0

    if-eqz v1, :cond_5b

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_5b

    .line 130
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 131
    return v0

    .line 133
    :cond_11
    array-length v1, p0

    .line 134
    .local v1, "N":I
    aget v2, p0, v0

    .line 135
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 136
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_5a

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5a

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_5a

    .line 139
    :cond_2c
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":F
    :goto_30
    if-ge v2, v1, :cond_59

    .line 140
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_58

    aget v6, p1, v2

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3f

    goto :goto_58

    .line 143
    :cond_3f
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_57

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_57

    .line 146
    :cond_50
    aget v3, p0, v2

    .line 147
    aget v5, p1, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 144
    :cond_57
    :goto_57
    return v0

    .line 141
    :cond_58
    :goto_58
    return v0

    .line 149
    .end local v2    # "i":I
    :cond_59
    return v4

    .line 137
    .end local v5    # "prevY":F
    .local v2, "prevX":F
    .local v3, "prevY":F
    :cond_5a
    :goto_5a
    return v0

    .line 128
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_5b
    :goto_5b
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .registers 9
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 153
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    array-length v1, p0

    if-eqz v1, :cond_48

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_48

    .line 156
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 157
    return v0

    .line 159
    :cond_11
    array-length v1, p0

    .line 160
    .local v1, "N":I
    aget v2, p0, v0

    .line 161
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 162
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_47

    if-ltz v3, :cond_47

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_47

    .line 165
    :cond_24
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":I
    :goto_28
    if-ge v2, v1, :cond_46

    .line 166
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_45

    aget v6, p1, v2

    if-lt v5, v6, :cond_35

    goto :goto_45

    .line 169
    :cond_35
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 170
    return v0

    .line 172
    :cond_3e
    aget v3, p0, v2

    .line 173
    aget v5, p1, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 167
    :cond_45
    :goto_45
    return v0

    .line 175
    .end local v2    # "i":I
    :cond_46
    return v4

    .line 163
    .end local v5    # "prevY":I
    .local v2, "prevX":F
    .local v3, "prevY":I
    :cond_47
    :goto_47
    return v0

    .line 154
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_48
    :goto_48
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .registers 3
    .param p0, "brightness"    # I

    .line 259
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 261
    int-to-float v0, p0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static permissibleRatio(FF)F
    .registers 4
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 348
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    .line 349
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    .line 350
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 348
    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private static smoothCurve([F[FI)V
    .registers 11
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "idx"    # I

    .line 310
    aget v0, p0, p2

    .line 311
    .local v0, "prevLux":F
    aget v1, p1, p2

    .line 313
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 314
    aget v3, p0, v2

    .line 315
    .local v3, "currLux":F
    aget v4, p1, v2

    .line 316
    .local v4, "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 317
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 319
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_1b

    .line 320
    goto :goto_22

    .line 322
    :cond_1b
    move v0, v3

    .line 323
    move v1, v6

    .line 324
    aput v6, p1, v2

    .line 313
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 327
    .end local v2    # "i":I
    :cond_22
    :goto_22
    aget v0, p0, p2

    .line 328
    aget v1, p1, p2

    .line 329
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "i":I
    :goto_28
    if-ltz v2, :cond_43

    .line 330
    aget v3, p0, v2

    .line 331
    .restart local v3    # "currLux":F
    aget v4, p1, v2

    .line 332
    .restart local v4    # "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 333
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 335
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_3c

    .line 336
    goto :goto_43

    .line 338
    :cond_3c
    move v0, v3

    .line 339
    move v1, v6

    .line 340
    aput v6, p1, v2

    .line 329
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 345
    .end local v2    # "i":I
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(F)F
.end method

.method public abstract getCurrentConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method
