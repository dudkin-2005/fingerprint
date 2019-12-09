.class Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CarUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CarUserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CircleFramedDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 7

    .line 106
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    iput p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    .line 109
    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 121
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 123
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    iget-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    .line 141
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    invoke-direct {p1, v5, v5, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 142
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v0, v0

    invoke-direct {p1, v4, v4, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 143
    return-void
.end method

.method public static getInstance(Landroid/graphics/Bitmap;F)Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    .locals 1

    .line 101
    new-instance v0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;

    float-to-int p1, p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 147
    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 148
    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 150
    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 151
    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 156
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 167
    return-void
.end method
