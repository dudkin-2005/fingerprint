.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .locals 0

    .line 391
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 393
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .locals 1

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method

.method public dispatchDisplayResumed()V
    .locals 1

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public dispatchDisplayStopped()V
    .locals 1

    .line 423
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 424
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 398
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    .line 404
    goto :goto_0

    .line 400
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    nop

    .line 411
    :goto_0
    goto :goto_1

    .line 409
    :catch_0
    move-exception p1

    .line 410
    const-string v0, "VirtualDisplayAdapter"

    const-string v1, "Failed to notify listener of virtual display event."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method