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
    .locals 1

    .line 50
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)F
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$100(FFF)F
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .locals 0

    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 8

    .line 54
    const v0, 0x1070015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 56
    const v1, 0x1070014

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 58
    const v2, 0x1070012

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 60
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 64
    const v5, 0x107004a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 66
    const v6, 0x1070049

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 69
    invoke-static {v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    const v1, 0x10e0094

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 73
    const v7, 0x10e0093

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 75
    const/4 v7, 0x0

    aget v7, v6, v7

    if-gt v7, v1, :cond_0

    array-length v1, v6

    sub-int/2addr v1, v3

    aget v1, v6, v1

    if-ge v1, p0, :cond_1

    .line 77
    :cond_0
    const-string p0, "BrightnessMappingStrategy"

    const-string v1, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    new-instance p0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 81
    invoke-virtual {p0, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 82
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v0

    .line 84
    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 85
    new-instance p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object p0

    .line 88
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findInsertionPoint([FF)I
    .locals 2

    .line 282
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 283
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 284
    return v0

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 369
    nop

    .line 370
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 374
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p4, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    .line 375
    neg-float p4, p4

    invoke-static {p5, p4}, Landroid/util/MathUtils;->pow(FF)F

    move-result p4

    .line 380
    cmpl-float p5, p4, v0

    if-eqz p5, :cond_0

    .line 381
    const/4 p5, 0x0

    :goto_0
    array-length v0, p1

    if-ge p5, v0, :cond_0

    .line 382
    aget v0, p1, p5

    invoke-static {v0, p4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    aput v0, p1, p5

    .line 381
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 388
    :cond_0
    cmpl-float p4, p2, v1

    if-eqz p4, :cond_1

    .line 389
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p0

    .line 391
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [F

    .line 392
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [F

    .line 400
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 102
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 103
    new-array v1, v0, [F

    .line 104
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 3

    .line 94
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 95
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 96
    add-int/lit8 v2, v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 95
    move v1, v2

    goto :goto_0

    .line 98
    :cond_0
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .locals 3

    .line 339
    nop

    .line 340
    nop

    .line 343
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 347
    nop

    .line 357
    move p0, v1

    goto :goto_1

    .line 349
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_2

    .line 350
    nop

    .line 357
    move p0, v2

    goto :goto_1

    .line 353
    :cond_2
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result p2

    div-float/2addr p1, p2

    .line 355
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    neg-float p1, p1

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    div-float p0, p1, p0

    goto :goto_1

    .line 344
    :cond_3
    :goto_0
    sub-float p0, p1, p2

    .line 357
    :goto_1
    invoke-static {p0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    .line 364
    return p0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 250
    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 253
    array-length v1, p0

    if-ne v0, v1, :cond_0

    .line 254
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 255
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 256
    aput p2, p0, v0

    .line 257
    aput p3, p1, v0

    goto :goto_0

    .line 258
    :cond_0
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    .line 259
    array-length p2, p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 260
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 261
    aput p3, p1, v0

    goto :goto_0

    .line 263
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 264
    add-int/lit8 v2, v0, 0x1

    array-length p0, p0

    sub-int/2addr p0, v0

    invoke-static {v1, v0, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aput p2, v1, v0

    .line 266
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 267
    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {p0, v0, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    aput p3, p0, v0

    .line 271
    move-object p1, p0

    move-object p0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 272
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static isValidMapping([F[F)Z
    .locals 7

    .line 112
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v1, p0

    if-eqz v1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 115
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 116
    return v0

    .line 118
    :cond_1
    array-length v1, p0

    .line 119
    aget v2, p0, v0

    .line 120
    aget v3, p1, v0

    .line 121
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_8

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 124
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_7

    .line 125
    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_6

    aget v3, p1, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 131
    :cond_4
    aget v3, p0, v2

    .line 132
    aget v5, p1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_5
    :goto_1
    return v0

    .line 126
    :cond_6
    :goto_2
    return v0

    .line 134
    :cond_7
    return v4

    .line 122
    :cond_8
    :goto_3
    return v0

    .line 113
    :cond_9
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 7

    .line 138
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 141
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 142
    return v0

    .line 144
    :cond_1
    array-length v1, p0

    .line 145
    aget v2, p0, v0

    .line 146
    aget v3, p1, v0

    .line 147
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    if-ltz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 150
    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_6

    .line 151
    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_5

    aget v3, p1, v2

    if-le v5, v3, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    aget v3, p0, v2

    .line 158
    aget v5, p1, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_5
    :goto_1
    return v0

    .line 160
    :cond_6
    return v4

    .line 148
    :cond_7
    :goto_2
    return v0

    .line 139
    :cond_8
    :goto_3
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2

    .line 243
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 245
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private static permissibleRatio(FF)F
    .locals 1

    .line 332
    const/high16 v0, 0x3e800000    # 0.25f

    add-float/2addr p0, v0

    .line 333
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    add-float/2addr p1, v0

    .line 334
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    sub-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p1, p0

    .line 332
    invoke-static {p1}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    return p0
.end method

.method private static smoothCurve([F[FI)V
    .locals 5

    .line 294
    aget v0, p0, p2

    .line 295
    aget v1, p1, p2

    .line 297
    add-int/lit8 v2, p2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 298
    aget v3, p0, v2

    .line 299
    aget v4, p1, v2

    .line 300
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    .line 301
    invoke-static {v4, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 303
    cmpl-float v0, v1, v4

    if-nez v0, :cond_0

    .line 304
    goto :goto_1

    .line 306
    :cond_0
    nop

    .line 307
    nop

    .line 308
    aput v1, p1, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 311
    :cond_1
    :goto_1
    aget v0, p0, p2

    .line 312
    aget v1, p1, p2

    .line 313
    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_3

    .line 314
    aget v2, p0, p2

    .line 315
    aget v3, p1, p2

    .line 316
    invoke-static {v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    .line 317
    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 319
    cmpl-float v0, v1, v3

    if-nez v0, :cond_2

    .line 320
    goto :goto_3

    .line 322
    :cond_2
    nop

    .line 323
    nop

    .line 324
    aput v1, p1, p2

    .line 313
    add-int/lit8 p2, p2, -0x1

    move v0, v2

    goto :goto_2

    .line 329
    :cond_3
    :goto_3
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
