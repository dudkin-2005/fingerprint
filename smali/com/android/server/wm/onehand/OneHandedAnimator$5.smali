.class Lcom/android/server/wm/onehand/OneHandedAnimator$5;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;->registerObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$5;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0

    .line 535
    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1102(I)I

    .line 541
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$5;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1300(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator$5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    .line 531
    return-void
.end method
