.class final Lcom/android/server/display/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Lcom/android/server/display/ScreenStateAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_SCALE_DOWN:I = 0x3

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mDisplayHeight:I

.field private mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mMode:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexMatrix:[F

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    .line 105
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 106
    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 130
    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    .line 131
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    .line 132
    return-void
.end method

.method private attachEglContext()Z
    .locals 5

    .line 665
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 666
    return v1

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 670
    return v1

    .line 672
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 9

    .line 446
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 447
    return v1

    .line 450
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 452
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 453
    nop

    .line 489
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 453
    return v1

    .line 455
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    .line 458
    :cond_2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 459
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    :try_start_2
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :try_start_3
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 465
    nop

    .line 467
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 468
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 473
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 474
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 475
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 476
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 479
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 480
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 481
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 482
    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v6, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    .line 483
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 484
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 485
    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 486
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 487
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 490
    nop

    .line 491
    return v2

    .line 464
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1

    .line 721
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 4

    .line 725
    nop

    .line 727
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    if-eqz p1, :cond_0

    .line 729
    const-string v0, "ElectronBeam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 733
    :cond_1
    return v0
.end method

.method private createEglContext()Z
    .locals 11

    .line 509
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 510
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 511
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_0

    .line 512
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 513
    return v2

    .line 516
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 517
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 519
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 520
    return v2

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 525
    const/16 v0, 0x9

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 532
    new-array v9, v1, [I

    .line 533
    new-array v0, v1, [Landroid/opengl/EGLConfig;

    .line 534
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v0

    const/4 v10, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 536
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 537
    return v2

    .line 539
    :cond_2
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 543
    new-array v0, v1, [I

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 546
    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    .line 548
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 549
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 550
    return v2

    .line 553
    :cond_4
    return v1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    .line 607
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 608
    new-array v0, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 612
    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 614
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 615
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 616
    return v3

    .line 619
    :cond_0
    return v1
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    .line 711
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 712
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 713
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private createSurface()Z
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 571
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 576
    :try_start_1
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 577
    const v0, 0x20004

    goto :goto_0

    .line 579
    :cond_1
    const/16 v0, 0x404

    .line 581
    :goto_0
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 582
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 583
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "ElectronBeam"

    .line 584
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    .line 585
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    .line 586
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    goto :goto_1

    .line 587
    :catch_0
    move-exception v0

    .line 588
    :try_start_2
    const-string v1, "ElectronBeam"

    const-string v2, "Unable to create surface."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    const/4 v0, 0x0

    .line 601
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 589
    return v0

    .line 593
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 594
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 595
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    .line 596
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 598
    new-instance v0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    .line 599
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 602
    nop

    .line 603
    const/4 v0, 0x1

    return v0

    .line 601
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    .line 627
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 629
    :cond_1
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .line 495
    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    .line 497
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 500
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 503
    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0

    .line 506
    :cond_0
    :goto_0
    return-void
.end method

.method private destroySurface()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    .line 635
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 638
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 641
    nop

    .line 642
    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 646
    :cond_0
    :goto_0
    return-void
.end method

.method private detachEglContext()V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 680
    :cond_0
    return-void
.end method

.method private drawHStretch(F)V
    .locals 6

    .line 395
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 400
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 402
    const/4 p1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-static {p1, v2, v4, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 403
    const p1, 0x8074

    invoke-static {p1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 406
    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v2, v3, v5, v0}, Lcom/android/server/display/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 407
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 408
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 411
    invoke-static {p1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 413
    :cond_0
    return-void
.end method

.method private drawScaled(F)V
    .locals 11

    .line 262
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result p1

    .line 265
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 266
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 269
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 270
    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 273
    const/16 v5, 0xde1

    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 274
    const v5, 0x8d65

    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 277
    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v6, v6, v4

    invoke-static {v5, v6}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 278
    nop

    .line 279
    iget v6, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-nez v6, :cond_0

    const/16 v6, 0x2100

    goto :goto_0

    :cond_0
    const/16 v6, 0x1e01

    .line 278
    :goto_0
    const/16 v7, 0x2300

    const/16 v8, 0x2200

    invoke-static {v7, v8, v6}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 280
    const/16 v6, 0x2800

    const/16 v7, 0x2601

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 282
    const/16 v6, 0x2801

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 284
    const/16 v6, 0x2802

    const v7, 0x812f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 286
    const/16 v6, 0x2803

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 288
    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 289
    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v2, v4, v6}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 290
    const v2, 0x8078

    invoke-static {v2}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 293
    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v7, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    div-int/2addr v7, v3

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    div-int/2addr v9, v3

    int-to-float v3, v9

    mul-float/2addr v3, v8

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    invoke-static {v6, v7, v3, v9, v10}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 296
    const/4 p1, 0x4

    const/4 v3, 0x6

    invoke-static {v3, v4, p1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 299
    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 300
    invoke-static {v2}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 301
    const/4 v2, 0x1

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 302
    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v8}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 303
    invoke-static {v3, v4, p1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 306
    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 307
    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 308
    return-void
.end method

.method private drawVStretch(F)V
    .locals 12

    .line 319
    const/high16 v0, 0x40f00000    # 7.5f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    .line 320
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v1

    .line 321
    const/high16 v2, 0x41080000    # 8.5f

    invoke-static {p1, v2}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result p1

    .line 328
    const/4 v2, 0x1

    invoke-static {v2, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 329
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 332
    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x1406

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v4}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 333
    const v4, 0x8074

    invoke-static {v4}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 336
    const/16 v8, 0xde1

    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 337
    const v8, 0x8d65

    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 340
    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 341
    nop

    .line 342
    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-nez v9, :cond_0

    const/16 v9, 0x2100

    goto :goto_0

    :cond_0
    const/16 v9, 0x1e01

    .line 341
    :goto_0
    const/16 v10, 0x2300

    const/16 v11, 0x2200

    invoke-static {v10, v11, v9}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 343
    const/16 v9, 0x2800

    const/16 v10, 0x2601

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 345
    const/16 v9, 0x2801

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 347
    const/16 v9, 0x2802

    const v10, 0x812f

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 349
    const/16 v9, 0x2803

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 351
    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 352
    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v6, v5, v7, v9}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 353
    const v5, 0x8078

    invoke-static {v5}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 356
    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v10, v10

    invoke-static {v6, v9, v10, v0}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 357
    invoke-static {v2, v7, v7, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 358
    const/4 v0, 0x4

    const/4 v6, 0x6

    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 361
    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v11, v11

    invoke-static {v9, v10, v11, v1}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 362
    invoke-static {v7, v2, v7, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 363
    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 366
    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v11, v11

    invoke-static {v9, v10, v11, p1}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    .line 367
    invoke-static {v7, v7, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 368
    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 371
    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 372
    invoke-static {v5}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 373
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    .line 376
    iget p1, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-ne p1, v2, :cond_1

    .line 377
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, p1}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    .line 378
    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 382
    :cond_1
    invoke-static {v4}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 383
    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 384
    return-void
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 2

    .line 717
    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: error "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    return-void
.end method

.method private static scurve(FF)F
    .locals 1

    .line 691
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    .line 696
    invoke-static {p0, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result p0

    sub-float/2addr p0, v0

    .line 700
    invoke-static {v0, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result p1

    sub-float/2addr p1, v0

    .line 703
    div-float/2addr p0, p1

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 2

    .line 424
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p3, v1, p3

    mul-float/2addr v0, p3

    .line 426
    sub-float/2addr p1, v0

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p1, p3

    .line 427
    sub-float/2addr p2, v1

    mul-float/2addr p2, p3

    .line 428
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 429
    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 1

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 437
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 438
    add-float/2addr p4, p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 439
    add-float/2addr p1, p3

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 440
    const/4 p3, 0x5

    invoke-virtual {p0, p3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 441
    const/4 p3, 0x6

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 442
    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 443
    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 2

    .line 416
    mul-float v0, p1, p3

    add-float/2addr v0, p1

    .line 417
    mul-float/2addr p3, p2

    sub-float p3, p2, p3

    .line 418
    sub-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    .line 419
    sub-float/2addr p2, p3

    mul-float/2addr p2, v1

    .line 420
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 421
    return-void
.end method

.method private showSurface(F)Z
    .locals 3

    .line 649
    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 650
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 653
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 654
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 657
    nop

    .line 658
    iput-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    .line 659
    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    .line 661
    :cond_1
    return v1

    .line 656
    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw p1
.end method

.method private static sigmoid(FF)F
    .locals 0

    .line 707
    neg-float p0, p0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    div-float/2addr p1, p0

    return p1
.end method

.method private tryPrepare()Z
    .locals 4

    .line 180
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 182
    return v3

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createEglContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createEglSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    move v1, v3

    goto :goto_0

    .line 186
    :cond_1
    nop

    .line 184
    :goto_0
    return v1

    .line 188
    :cond_2
    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroyScreenshotTexture()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroyEglSurface()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroySurface()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    .line 207
    return-void
.end method

.method public draw(F)Z
    .locals 5

    .line 222
    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    .line 227
    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result p1

    return p1

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    return v1

    .line 235
    :cond_2
    const/4 v0, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    :try_start_0
    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 236
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES10;->glClear(I)V

    .line 239
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 245
    :cond_3
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawScaled(F)V

    goto :goto_1

    .line 240
    :cond_4
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_5

    .line 241
    div-float/2addr p1, v2

    sub-float p1, v3, p1

    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawHStretch(F)V

    goto :goto_1

    .line 243
    :cond_5
    sub-float/2addr p1, v2

    div-float/2addr p1, v2

    sub-float p1, v3, p1

    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawVStretch(F)V

    .line 249
    :cond_6
    :goto_1
    const-string p1, "drawFrame"

    invoke-static {p1}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    .line 250
    nop

    .line 255
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 250
    return v1

    .line 253
    :cond_7
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    .line 256
    nop

    .line 258
    invoke-direct {p0, v3}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result p1

    return p1

    .line 255
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 737
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 738
    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 2

    .line 146
    iput p2, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    .line 150
    iget-object p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    .line 151
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    .line 152
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    .line 153
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    .line 156
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->tryPrepare()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->dismiss()V

    .line 158
    return v0

    .line 162
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    .line 171
    const/4 v1, 0x3

    if-eq p2, p1, :cond_1

    if-ne p2, v1, :cond_2

    .line 172
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 173
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Lcom/android/server/display/ElectronBeam;->draw(F)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return p1
.end method
