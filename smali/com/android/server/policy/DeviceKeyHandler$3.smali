.class Lcom/android/server/policy/DeviceKeyHandler$3;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 779
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    return-void
.end method

.method public onDismissError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    return-void
.end method
