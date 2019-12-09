.class Lcom/android/server/am/AssistDataReceiverProxy;
.super Ljava/lang/Object;
.source "AssistDataReceiverProxy.java"

# interfaces
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mCallerPackage:Ljava/lang/String;

.field private mReceiver:Landroid/app/IAssistDataReceiver;


# direct methods
.method public constructor <init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    .line 44
    iput-object p2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->linkToDeath()V

    .line 46
    return-void
.end method

.method private linkToDeath()V
    .locals 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "ActivityManager"

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_0
    return-void
.end method

.method private unlinkToDeath()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    .line 101
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    .line 86
    return-void
.end method

.method public canHandleReceivedAssistDataLocked()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .locals 1

    .line 56
    iget-object p2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz p2, :cond_0

    .line 58
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {p2, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to proxy assist data to receiver in package="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistRequestCompleted()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    .line 81
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to proxy assist screenshot to receiver in package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    :goto_0
    return-void
.end method