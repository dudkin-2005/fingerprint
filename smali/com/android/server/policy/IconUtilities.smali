.class public final Lcom/android/server/policy/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDisabledColorFilter:Landroid/graphics/ColorFilter;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIconHeight:I

.field private mIconTextureHeight:I

.field private mIconTextureWidth:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    .line 45
    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    .line 46
    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    .line 47
    iput v0, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 58
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 59
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    .line 61
    const/high16 v0, 0x1050000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    iput p1, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    .line 62
    iget p1, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    iput p1, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    .line 63
    iget-object p1, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 65
    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    .line 72
    iget v0, p0, Lcom/android/server/policy/IconUtilities;->mIconWidth:I

    .line 73
    iget v1, p0, Lcom/android/server/policy/IconUtilities;->mIconHeight:I

    .line 75
    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    .line 77
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 78
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 79
    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 81
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/android/server/policy/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 90
    if-lez v2, :cond_6

    if-lez v3, :cond_6

    .line 92
    if-lt v0, v2, :cond_3

    if-ge v1, v3, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    if-ge v2, v0, :cond_6

    if-ge v3, v1, :cond_6

    .line 102
    nop

    .line 103
    nop

    .line 108
    move v0, v2

    move v1, v3

    goto :goto_3

    .line 94
    :cond_3
    :goto_1
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 95
    if-le v2, v3, :cond_4

    .line 96
    int-to-float v1, v0

    div-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_2

    .line 97
    :cond_4
    if-le v3, v2, :cond_5

    .line 98
    int-to-float v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 100
    :cond_5
    :goto_2
    nop

    .line 108
    :cond_6
    :goto_3
    iget v2, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureWidth:I

    .line 109
    iget v3, p0, Lcom/android/server/policy/IconUtilities;->mIconTextureHeight:I

    .line 111
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/android/server/policy/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    .line 114
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 117
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 119
    iget-object v6, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    return-object v4
.end method

.method public getDisabledColorFilter()Landroid/graphics/ColorFilter;
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 132
    nop

    .line 133
    const/high16 v1, 0x42ff0000    # 127.5f

    float-to-int v1, v1

    .line 135
    const/high16 v2, 0x3f000000    # 0.5f

    .line 136
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 137
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 138
    const/4 v4, 0x6

    aput v2, v3, v4

    .line 139
    const/16 v4, 0xc

    aput v2, v3, v4

    .line 140
    const/4 v2, 0x4

    int-to-float v1, v1

    aput v1, v3, v2

    .line 141
    const/16 v2, 0x9

    aput v1, v3, v2

    .line 142
    const/16 v2, 0xe

    aput v1, v3, v2

    .line 144
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 148
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/IconUtilities;->mDisabledColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method
