.class Lcom/android/server/broadcastradio/hal2/TunerCallback;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "TunerCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.cb"


# instance fields
.field final mClientCb:Landroid/hardware/radio/ITunerCallback;


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITunerCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ITunerCallback;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    .line 42
    return-void
.end method

.method static dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 2

    .line 46
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v0, "BcRadio2Srv.cb"

    const-string v1, "callback call failed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onAntennaStateChange$3(Lcom/android/server/broadcastradio/hal2/TunerCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public static synthetic lambda$onCurrentProgramInfoChanged$1(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public static synthetic lambda$onParametersUpdated$4(Lcom/android/server/broadcastradio/hal2/TunerCallback;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$onProgramListUpdated$2(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic lambda$onTuneFailed$0(Lcom/android/server/broadcastradio/hal2/TunerCallback;ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerCallback;->mClientCb:Landroid/hardware/radio/ITunerCallback;

    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method


# virtual methods
.method public onAntennaStateChange(Z)V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$4QBYui9TTe72lpu-ZEbezxJSKDg;-><init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Z)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 70
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$BVfZjikb4C0UELTivStyv5FL3oQ;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$BVfZjikb4C0UELTivStyv5FL3oQ;-><init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 60
    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$5J8F-hUEkbHptpTjfB5HrmIF-7w;-><init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 75
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$NBPSu3hnNZZM0d6dcfEzy6v1DdE;-><init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 65
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerCallback$g9s81qLW621BQoiMM1ZJSz6j7o0;-><init>(Lcom/android/server/broadcastradio/hal2/TunerCallback;ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;)V

    .line 55
    return-void
.end method
