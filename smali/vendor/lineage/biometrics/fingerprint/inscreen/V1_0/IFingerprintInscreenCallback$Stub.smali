.class public abstract Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;
.super Landroid/os/HwBinder;
.source "IFingerprintInscreenCallback.java"

# interfaces
.implements Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 304
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 346
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 347
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 348
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 349
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 350
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreenCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 316
    const-string/jumbo v0, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreenCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 335
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 355
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 356
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_d

    .line 559
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 560
    move v1, v2

    goto :goto_0

    .line 559
    :cond_0
    nop

    .line 560
    :goto_0
    if-eqz v1, :cond_17

    .line 561
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 563
    goto/16 :goto_d

    .line 546
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 547
    move v1, v2

    goto :goto_1

    .line 546
    :cond_1
    nop

    .line 547
    :goto_1
    if-eq v1, v2, :cond_2

    .line 548
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 550
    goto/16 :goto_d

    .line 551
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->notifySyspropsChanged()V

    .line 554
    goto/16 :goto_d

    .line 530
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 531
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto/16 :goto_d

    .line 535
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 538
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_d

    .line 515
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 516
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 517
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_d

    .line 520
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->ping()V

    .line 523
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto/16 :goto_d

    .line 505
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 506
    move v1, v2

    goto :goto_4

    .line 505
    :cond_7
    nop

    .line 506
    :goto_4
    if-eqz v1, :cond_17

    .line 507
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 509
    goto/16 :goto_d

    .line 492
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 493
    move v1, v2

    goto :goto_5

    .line 492
    :cond_8
    nop

    .line 493
    :goto_5
    if-eq v1, v2, :cond_9

    .line 494
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 496
    goto/16 :goto_d

    .line 497
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->setHALInstrumentation()V

    .line 500
    goto/16 :goto_d

    .line 459
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 460
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 461
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 463
    goto/16 :goto_d

    .line 464
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 467
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 471
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 472
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 473
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 474
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 475
    :goto_7
    if-ge v1, p4, :cond_c

    .line 477
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 478
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 479
    nop

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 482
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 484
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 487
    goto/16 :goto_d

    .line 443
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 444
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 445
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 447
    goto/16 :goto_d

    .line 448
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 452
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 454
    goto/16 :goto_d

    .line 429
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 430
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 431
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 433
    goto/16 :goto_d

    .line 434
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 438
    goto :goto_d

    .line 413
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 414
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 415
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 417
    goto :goto_d

    .line 418
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 421
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 422
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 424
    goto :goto_d

    .line 400
    :sswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    .line 401
    move v1, v2

    goto :goto_b

    .line 400
    :cond_13
    nop

    .line 401
    :goto_b
    if-eq v1, v2, :cond_14

    .line 402
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 403
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 404
    goto :goto_d

    .line 405
    :cond_14
    const-string/jumbo p1, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreenCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->onFingerUp()V

    .line 408
    goto :goto_d

    .line 387
    :sswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    .line 388
    move v1, v2

    goto :goto_c

    .line 387
    :cond_15
    nop

    .line 388
    :goto_c
    if-eq v1, v2, :cond_16

    .line 389
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 391
    goto :goto_d

    .line 392
    :cond_16
    const-string/jumbo p1, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreenCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->onFingerDown()V

    .line 395
    nop

    .line 568
    :cond_17
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 340
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 366
    const-string/jumbo v0, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreenCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 367
    return-object p0

    .line 369
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 360
    const/4 p1, 0x1

    return p1
.end method
