.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 42
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 45
    nop

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v2, "StrictModeFlash"

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0, v0}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v2, -0x3

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    const v1, 0xf6950

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 54
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->show()V

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p1, v1

    .line 58
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 59
    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 60
    return-void
.end method

.method private drawIfNeeded()V
    .locals 7

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 67
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 68
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    const/4 v4, 0x0

    .line 73
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 75
    :catch_0
    move-exception v3

    goto :goto_0

    .line 74
    :catch_1
    move-exception v3

    .line 76
    nop

    .line 77
    :goto_0
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_1

    .line 78
    return-void

    .line 82
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 83
    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x14

    invoke-direct {v4, v0, v0, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 84
    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 87
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 88
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v0, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 89
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 93
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v1, -0x14

    invoke-direct {v5, v6, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 94
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 95
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v2, -0x14

    invoke-direct {v5, v0, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 99
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 124
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 126
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 127
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->hide()V

    .line 117
    :goto_0
    return-void
.end method
