.class Lcom/android/server/wm/AppWindowThumbnail;
.super Ljava/lang/Object;
.source "AppWindowThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mHeight:I

.field private final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 56
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;-><init>(Lcom/android/server/wm/AppWindowThumbnail;)V

    iget-object v2, p2, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 57
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    .line 58
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 61
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumbnail anim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 69
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget p2, p2, Lcom/android/server/wm/AppWindowToken;->windowType:I

    .line 71
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 70
    :goto_0
    invoke-virtual {v1, p2, v0}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setBufferLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 80
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2}, Landroid/view/Surface;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 83
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 84
    iget-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 88
    iget-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 89
    return-void
.end method

.method public static synthetic lambda$hHTeq2FR5SSE1YyVM6K-wuzeLLo(Lcom/android/server/wm/AppWindowThumbnail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowThumbnail;->onAnimationFinished()V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 0

    .line 105
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->commitPendingTransaction()V

    .line 145
    return-void
.end method

.method destroy()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 119
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 149
    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 150
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 158
    return-void
.end method

.method setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    :goto_0
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 93
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .locals 4

    .line 96
    const-wide/16 v0, 0x2710

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 100
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Z)V

    iget-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object p2, p2, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 98
    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 102
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 130
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 131
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 132
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 135
    return-void
.end method
