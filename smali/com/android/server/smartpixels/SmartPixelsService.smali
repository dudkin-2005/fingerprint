.class public Lcom/android/server/smartpixels/SmartPixelsService;
.super Landroid/app/Service;
.source "SmartPixelsService.java"


# static fields
.field public static final LOG:Ljava/lang/String; = "SmartPixelsService"

.field public static running:Z


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private destroyed:Z

.field private mContext:Landroid/content/Context;

.field private mPattern:I

.field private mShiftTimeout:I

.field private startCounter:I

.field private view:Landroid/widget/ImageView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartpixels/SmartPixelsService;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->destroyed:Z

    .line 74
    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mPattern:I

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mShiftTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartpixels/SmartPixelsService;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/smartpixels/SmartPixelsService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->destroyed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/smartpixels/SmartPixelsService;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/smartpixels/SmartPixelsService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->updatePattern()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/smartpixels/SmartPixelsService;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mShiftTimeout:I

    return p0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 12

    .line 181
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 183
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 184
    iget-object v2, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    const v3, 0x10501a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 187
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 188
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 190
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7d6

    const v10, 0x3080318

    const/4 v11, -0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 207
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 209
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 210
    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 211
    return-object v1
.end method

.method private getShift()I
    .locals 4

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/smartpixels/Grids;->ShiftTimeouts:[I

    iget v3, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mShiftTimeout:I

    aget v2, v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    .line 216
    sget-object v2, Lcom/android/server/smartpixels/Grids;->GridShift:[B

    long-to-int v0, v0

    aget-byte v0, v2, v0

    return v0
.end method

.method private updatePattern()V
    .locals 8

    .line 220
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->getShift()I

    move-result v0

    .line 221
    rem-int/lit8 v1, v0, 0x8

    .line 222
    div-int/lit8 v0, v0, 0x8

    .line 223
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 224
    add-int v4, v3, v1

    rem-int/lit8 v4, v4, 0x8

    .line 225
    div-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v0

    rem-int/lit8 v5, v5, 0x8

    .line 226
    sget-object v6, Lcom/android/server/smartpixels/Grids;->Patterns:[[B

    iget v7, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mPattern:I

    aget-object v6, v6, v7

    aget-byte v6, v6, v3

    if-nez v6, :cond_0

    .line 227
    move v6, v2

    goto :goto_1

    .line 226
    :cond_0
    const/high16 v6, -0x1000000

    .line 227
    :goto_1
    iget-object v7, p0, Lcom/android/server/smartpixels/SmartPixelsService;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_pattern"

    .line 232
    const/4 v2, -0x2

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mPattern:I

    .line 235
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_pixels_shift_timeout"

    .line 235
    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mShiftTimeout:I

    .line 238
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 83
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 173
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    const-string p1, "SmartPixelsService"

    const-string v0, "Screen orientation changed, updating window layout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/smartpixels/SmartPixelsService;->running:Z

    .line 90
    iput-object p0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->updateSettings()V

    .line 92
    const-string v0, "SmartPixelsService"

    const-string v1, "Service started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->startFilter()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->destroyed:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->stopFilter()V

    .line 167
    const-string v0, "SmartPixelsService"

    const-string v1, "Service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartpixels/SmartPixelsService;->running:Z

    .line 169
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 159
    const/4 p1, 0x1

    return p1
.end method

.method public startFilter()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/smartpixels/SmartPixelsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    .line 104
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x8

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->bmp:Landroid/graphics/Bitmap;

    .line 108
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->updatePattern()V

    .line 109
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/smartpixels/SmartPixelsService;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 112
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 113
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/smartpixels/SmartPixelsService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 126
    iget v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    .line 127
    iget v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    .line 128
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 129
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/server/smartpixels/SmartPixelsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 130
    new-instance v3, Lcom/android/server/smartpixels/SmartPixelsService$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/server/smartpixels/SmartPixelsService$1;-><init>(Lcom/android/server/smartpixels/SmartPixelsService;ILandroid/os/PowerManager;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/smartpixels/Grids;->ShiftTimeouts:[I

    iget v2, p0, Lcom/android/server/smartpixels/SmartPixelsService;->mShiftTimeout:I

    aget v0, v0, v2

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sput-boolean v2, Lcom/android/server/smartpixels/SmartPixelsService;->running:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    .line 123
    return-void
.end method

.method public stopFilter()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    iget v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->startCounter:I

    .line 153
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService;->view:Landroid/widget/ImageView;

    .line 155
    return-void
.end method
