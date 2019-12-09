.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 0

    .line 7627
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 7623
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 1

    .line 7619
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3

    .line 7584
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 7586
    return-void
.end method

.method public postDismiss()V
    .locals 3

    .line 7676
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7677
    return-void

    .line 7679
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7682
    goto :goto_0

    .line 7680
    :catch_0
    move-exception v0

    .line 7681
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7683
    :goto_0
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2

    .line 7636
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7637
    return-void

    .line 7639
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7642
    goto :goto_0

    .line 7640
    :catch_0
    move-exception p1

    .line 7641
    const-string v0, "VolumeController"

    const-string v1, "Error calling displaySafeVolumeWarning"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7643
    :goto_0
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 2

    .line 7656
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7657
    return-void

    .line 7659
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7662
    goto :goto_0

    .line 7660
    :catch_0
    move-exception p1

    .line 7661
    const-string v0, "VolumeController"

    const-string v1, "Error calling masterMuteChanged"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7663
    :goto_0
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 1

    .line 7646
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7647
    return-void

    .line 7649
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7652
    goto :goto_0

    .line 7650
    :catch_0
    move-exception p1

    .line 7651
    const-string p2, "VolumeController"

    const-string v0, "Error calling volumeChanged"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7653
    :goto_0
    return-void
.end method

.method public setA11yMode(I)V
    .locals 2

    .line 7686
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7687
    return-void

    .line 7689
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7692
    goto :goto_0

    .line 7690
    :catch_0
    move-exception p1

    .line 7691
    const-string v0, "VolumeController"

    const-string v1, "Error calling setA11Mode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7693
    :goto_0
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 0

    .line 7579
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 7580
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7581
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 7666
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 7667
    return-void

    .line 7669
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7672
    goto :goto_0

    .line 7670
    :catch_0
    move-exception p1

    .line 7671
    const-string v0, "VolumeController"

    const-string v1, "Error calling setLayoutDirection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7673
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 7615
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7616
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 6

    .line 7589
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 7590
    return v0

    .line 7592
    :cond_0
    nop

    .line 7593
    const/4 p3, 0x3

    const/4 v1, 0x1

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz p1, :cond_4

    .line 7594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7595
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez p1, :cond_2

    .line 7597
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    .line 7598
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 7600
    :cond_1
    goto :goto_1

    .line 7601
    :cond_2
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-lez p1, :cond_4

    .line 7602
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_3

    .line 7604
    iput-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_0

    .line 7607
    :cond_3
    goto :goto_1

    .line 7611
    :cond_4
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
