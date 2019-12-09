.class Lcom/android/server/custom/common/UserContentObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/common/UserContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/common/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/custom/common/UserContentObserver;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/server/custom/common/UserContentObserver$1;->this$0:Lcom/android/server/custom/common/UserContentObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0

    .line 45
    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0

    .line 48
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/android/server/custom/common/UserContentObserver$1;->this$0:Lcom/android/server/custom/common/UserContentObserver;

    invoke-static {p1}, Lcom/android/server/custom/common/UserContentObserver;->access$100(Lcom/android/server/custom/common/UserContentObserver;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/custom/common/UserContentObserver$1;->this$0:Lcom/android/server/custom/common/UserContentObserver;

    invoke-static {v0}, Lcom/android/server/custom/common/UserContentObserver;->access$000(Lcom/android/server/custom/common/UserContentObserver;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    .line 38
    return-void
.end method
