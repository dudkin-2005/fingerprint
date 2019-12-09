.class final Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "RemoteAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinishedCallback"
.end annotation


# instance fields
.field mOuter:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    .line 256
    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController;->access$100(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 268
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method release()V
    .locals 1

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    .line 282
    return-void
.end method
