.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V
    .locals 10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 65
    iput-object p3, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 69
    and-int/lit8 v1, v1, -0x2

    .line 70
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 71
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v5, v5, v2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 73
    const/16 v6, 0x46

    const/16 v7, 0x66

    const/16 v8, 0x41

    const/16 v9, 0x61

    if-lt v4, v9, :cond_0

    if-gt v4, v7, :cond_0

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    .line 74
    :cond_0
    if-lt v4, v8, :cond_1

    if-gt v4, v6, :cond_1

    add-int/lit8 v4, v4, -0x41

    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v4, v4, -0x30

    .line 76
    :goto_1
    if-lt v5, v9, :cond_2

    if-gt v5, v7, :cond_2

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 77
    :cond_2
    if-lt v5, v8, :cond_3

    if-gt v5, v6, :cond_3

    add-int/lit8 v5, v5, -0x41

    add-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 78
    :cond_3
    add-int/lit8 v5, v5, -0x30

    .line 79
    :goto_2
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    rsub-int v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 86
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-static {p3, v1, v1, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 89
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 94
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 95
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 97
    iget v0, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    invoke-static {p3, v3, v2, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 99
    iget v0, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v3, 0x3

    mul-int/2addr v0, v3

    invoke-static {p3, v3, v2, v0, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 101
    const/4 v0, 0x4

    const/high16 v3, -0x50000000

    invoke-static {p3, v0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 103
    const/4 v3, 0x5

    const v4, 0x60ffffff

    invoke-static {p3, v3, v2, v4, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 105
    const/4 v4, 0x6

    const/4 v5, 0x7

    invoke-static {p3, v4, v2, v5, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 107
    const/16 v5, 0x8

    invoke-static {p3, v5, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 109
    const/16 v6, 0x9

    invoke-static {p3, v6, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result p2

    .line 112
    iget-object p3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object p3, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v4

    int-to-float v3, v5

    int-to-float p2, p2

    invoke-virtual {p3, v2, v3, p2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 115
    const/4 p2, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p3, "WatermarkSurface"

    .line 118
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v1, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p3, -0x3

    .line 120
    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :try_start_1
    iget-object p2, p0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2}, Landroid/view/Display;->getLayerStack()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 123
    const p2, 0xf4240

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 124
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 125
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->show()V

    .line 126
    iget-object p2, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    goto :goto_3

    .line 127
    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p1, p2

    .line 129
    :goto_3
    iput-object p1, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 130
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 11

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v0, :cond_4

    .line 143
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 144
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 146
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 147
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    const/4 v4, 0x0

    .line 150
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 152
    :catch_0
    move-exception v3

    goto :goto_0

    .line 151
    :catch_1
    move-exception v3

    .line 153
    nop

    .line 154
    :goto_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 155
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 158
    iget v4, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 162
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v5, v0

    div-int/2addr v5, v2

    .line 163
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v6, v0

    mul-int/2addr v5, v2

    sub-int/2addr v6, v5

    .line 164
    div-int/lit8 v5, v2, 0x4

    .line 165
    if-lt v6, v5, :cond_0

    sub-int v5, v2, v5

    if-le v6, v5, :cond_1

    .line 166
    :cond_0
    div-int/lit8 v5, v2, 0x3

    add-int/2addr v2, v5

    .line 169
    :cond_1
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v5, v5

    .line 170
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v6, v6

    .line 171
    :cond_2
    :goto_2
    iget v7, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    .line 172
    iget-object v7, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v8, v6

    int-to-float v9, v5

    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    add-int/2addr v6, v2

    .line 174
    if-lt v6, v0, :cond_2

    .line 175
    iget v7, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v7, v0

    sub-int/2addr v6, v7

    .line 176
    add-int/2addr v5, v4

    goto :goto_2

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 182
    :cond_4
    return-void
.end method

.method positionSurface(II)V
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 135
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 137
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 139
    :cond_1
    return-void
.end method
