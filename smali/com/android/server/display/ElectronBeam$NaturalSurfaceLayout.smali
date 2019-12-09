.class final Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ElectronBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .locals 0

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 763
    iput p2, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayId:I

    .line 764
    iput-object p3, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 765
    iget-object p1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 766
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 769
    monitor-enter p0

    .line 770
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 771
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 773
    return-void

    .line 771
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 5

    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 779
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 783
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 784
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 799
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 800
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4, v3, v2, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 794
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 796
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v4, v4, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 797
    goto :goto_0

    .line 790
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 791
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 792
    goto :goto_0

    .line 786
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 787
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v4, v4, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    nop

    .line 804
    :goto_0
    goto :goto_1

    .line 803
    :catch_0
    move-exception v0

    .line 805
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
