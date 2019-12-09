.class public abstract Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;
.super Landroid/os/HwBinder;
.source "ICloseHandle.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ICloseHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 296
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 338
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 339
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 340
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 341
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 342
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

    .line 314
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
        -0x1bt
        -0xct
        -0x6at
        0x2t
        -0x70t
        -0x4ct
        -0xdt
        0x8t
        -0x6ft
        0x63t
        -0x23t
        0x43t
        0x25t
        0x1et
        0x1at
        0x3t
        0x2ct
        -0x7ft
        -0x17t
        -0x43t
        -0x49t
        -0x6at
        -0x19t
        0x5at
        -0x79t
        -0x4t
        0x7ct
        0x58t
        0x10t
        -0x3et
        0x62t
        -0x4dt
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

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ICloseHandle"

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

    .line 308
    const-string v0, "android.hardware.broadcastradio@2.0::ICloseHandle"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 327
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 347
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 348
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    .line 540
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 541
    move v1, v2

    goto :goto_0

    .line 540
    :cond_0
    nop

    .line 541
    :goto_0
    if-eqz v1, :cond_15

    .line 542
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 544
    goto/16 :goto_c

    .line 527
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 528
    move v1, v2

    goto :goto_1

    .line 527
    :cond_1
    nop

    .line 528
    :goto_1
    if-eq v1, v2, :cond_2

    .line 529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 531
    goto/16 :goto_c

    .line 532
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->notifySyspropsChanged()V

    .line 535
    goto/16 :goto_c

    .line 511
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 512
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 513
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto/16 :goto_c

    .line 516
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 519
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 520
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 522
    goto/16 :goto_c

    .line 496
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 497
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 498
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 500
    goto/16 :goto_c

    .line 501
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->ping()V

    .line 504
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto/16 :goto_c

    .line 486
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 487
    move v1, v2

    goto :goto_4

    .line 486
    :cond_7
    nop

    .line 487
    :goto_4
    if-eqz v1, :cond_15

    .line 488
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto/16 :goto_c

    .line 473
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 474
    move v1, v2

    goto :goto_5

    .line 473
    :cond_8
    nop

    .line 474
    :goto_5
    if-eq v1, v2, :cond_9

    .line 475
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 477
    goto/16 :goto_c

    .line 478
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->setHALInstrumentation()V

    .line 481
    goto/16 :goto_c

    .line 440
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 441
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 442
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 444
    goto/16 :goto_c

    .line 445
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 448
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 450
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 452
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 453
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 454
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 455
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 456
    :goto_7
    if-ge v1, p4, :cond_c

    .line 458
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 459
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 460
    nop

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 463
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 465
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 468
    goto/16 :goto_c

    .line 424
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 425
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 426
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 428
    goto/16 :goto_c

    .line 429
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 435
    goto :goto_c

    .line 410
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 411
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 412
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 414
    goto :goto_c

    .line 415
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 419
    goto :goto_c

    .line 394
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 395
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 396
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 398
    goto :goto_c

    .line 399
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 402
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 403
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 405
    goto :goto_c

    .line 379
    :sswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_b

    .line 380
    :cond_13
    move v2, v1

    :goto_b
    if-eqz v2, :cond_14

    .line 381
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 382
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 383
    goto :goto_c

    .line 384
    :cond_14
    const-string p1, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->close()V

    .line 387
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 389
    nop

    .line 549
    :cond_15
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
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

    .line 332
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 358
    const-string v0, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    return-object p0

    .line 361
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

    .line 365
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->registerService(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 323
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 352
    const/4 p1, 0x1

    return p1
.end method
