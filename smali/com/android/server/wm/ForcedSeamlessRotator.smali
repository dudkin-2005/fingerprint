.class public Lcom/android/server/wm/ForcedSeamlessRotator;
.super Ljava/lang/Object;
.source "ForcedSeamlessRotator.java"


# instance fields
.field private final mFloat9:[F

.field private final mNewRotation:I

.field private final mOldRotation:I

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mFloat9:[F

    .line 47
    iput p1, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mOldRotation:I

    .line 48
    iput p2, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mNewRotation:I

    .line 50
    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 51
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v0, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    iget v0, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 52
    :goto_1
    if-eqz v1, :cond_3

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 54
    :goto_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    iget-object v2, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-static {p1, p3, v0, v2}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 56
    invoke-static {p2, p3, v0, v1}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 57
    iget-object p1, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 58
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 100
    const-string/jumbo v0, "{old="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 101
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public finish(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mFloat9:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 89
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 91
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 92
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 90
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 93
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 94
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 95
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 93
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 97
    :cond_0
    return-void
.end method

.method public getOldRotation()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mOldRotation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 107
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ForcedSeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForcedSeamlessRotator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unrotate(Lcom/android/server/wm/WindowToken;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/ForcedSeamlessRotator;->mFloat9:[F

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method
