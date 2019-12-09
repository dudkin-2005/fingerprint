.class public abstract Lcom/android/server/custom/common/UserContentObserver;
.super Landroid/database/ContentObserver;
.source "UserContentObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserContentObserver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mUserSwitchObserver:Landroid/app/IUserSwitchObserver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    new-instance v0, Lcom/android/server/custom/common/UserContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/custom/common/UserContentObserver$1;-><init>(Lcom/android/server/custom/common/UserContentObserver;)V

    iput-object v0, p0, Lcom/android/server/custom/common/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 59
    iput-object p1, p0, Lcom/android/server/custom/common/UserContentObserver;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance p1, Lcom/android/server/custom/common/UserContentObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/custom/common/UserContentObserver$2;-><init>(Lcom/android/server/custom/common/UserContentObserver;)V

    iput-object p1, p0, Lcom/android/server/custom/common/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/common/UserContentObserver;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/custom/common/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/custom/common/UserContentObserver;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/custom/common/UserContentObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected observe()V
    .locals 3

    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/custom/common/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    const-string v2, "UserContentObserver"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "UserContentObserver"

    const-string v2, "Unable to register user switch observer!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/custom/common/UserContentObserver;->update()V

    .line 94
    return-void
.end method

.method protected unobserve()V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/common/UserContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/custom/common/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/custom/common/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "UserContentObserver"

    const-string v2, "Unable to unregister user switch observer!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_0
    return-void
.end method

.method protected abstract update()V
.end method
