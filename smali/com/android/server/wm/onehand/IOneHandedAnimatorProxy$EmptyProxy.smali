.class Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;
.super Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
.source "IOneHandedAnimatorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$1;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformationForRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 118
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;->shouldDump()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    const-string p2, "ONE HANED mini-screen solution is not supported."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public getShrinkingScale()F
    .locals 1

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformationForWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Landroid/view/animation/Transformation;
    .locals 0

    .line 138
    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V
    .locals 0

    .line 109
    return-void
.end method

.method public isOneHandedModeAvailable()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isOnehandTurnedON()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public notifyOutSideScreenTouch(II)V
    .locals 0

    .line 127
    return-void
.end method

.method public registerOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 0

    .line 158
    return-void
.end method

.method public stepAnimationInTransaction(J)Z
    .locals 0

    .line 113
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 0

    .line 162
    return-void
.end method
