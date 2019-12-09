.class public abstract Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
.super Ljava/lang/Object;
.source "IOneHandedAnimatorProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;,
        Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final IS_SUPPORTED:Z

.field private static final PROXY_CLASS_NAME:Ljava/lang/String; = "com.android.server.wm.onehand.OneHandedAnimatorProxy"

.field private static final TAG:Ljava/lang/String; = "IOneHandedAnimatorProxy"

.field public static mSyncRoot:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->mSyncRoot:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->IS_SUPPORTED:Z

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
    .locals 5

    .line 66
    sget-object v0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    if-nez v1, :cond_1

    .line 68
    nop

    .line 69
    sget-boolean v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->IS_SUPPORTED:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;

    invoke-direct {v1, v2}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;-><init>(Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "com.android.server.wm.onehand.OneHandedAnimatorProxy"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    :try_start_2
    const-string v3, "IOneHandedAnimatorProxy"

    const-string v4, "com.android.server.wm.onehand.OneHandedAnimatorProxy could not be loaded"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    new-instance v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;

    invoke-direct {v1, v2}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$EmptyProxy;-><init>(Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$1;)V

    .line 81
    :goto_0
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->initialize(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V

    .line 83
    sput-object v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    .line 85
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    sget-object p0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    return-object p0

    .line 85
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static notifyOutSideScreenTouchFromNative(II)V
    .locals 2

    .line 90
    sget-object v0, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->sInstance:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;->notifyOutSideScreenTouch(II)V

    .line 94
    :cond_0
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract applyTransformationForRect(Landroid/graphics/Rect;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getShrinkingScale()F
.end method

.method public abstract getTransformation()Landroid/view/animation/Transformation;
.end method

.method public abstract getTransformationForWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Landroid/view/animation/Transformation;
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V
.end method

.method public abstract isOneHandedModeAvailable()Z
.end method

.method public abstract isOnehandTurnedON()Z
.end method

.method public abstract notifyOutSideScreenTouch(II)V
.end method

.method public abstract registerOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
.end method

.method protected shouldDump()Z
    .locals 2

    .line 98
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract stepAnimationInTransaction(J)Z
.end method

.method public abstract unregisterOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
.end method
