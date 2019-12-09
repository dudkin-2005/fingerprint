.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 414
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 456
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 457
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 458
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 459
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 460
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

    .line 432
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
        -0x51t
        0x24t
        -0x48t
        0x7ct
        -0x58t
        -0x48t
        -0x10t
        0x2ft
        -0x33t
        -0x1et
        0x5t
        -0x1ct
        0x7dt
        -0x4at
        -0x57t
        0x60t
        -0x61t
        -0x39t
        -0x17t
        -0x29t
        0x7dt
        0x73t
        -0x1at
        -0x6ct
        -0x14t
        -0x71t
        -0x64t
        0x50t
        -0x74t
        -0x5ft
        -0x6bt
        0x75t
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

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

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

    .line 426
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 445
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 465
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 466
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_10

    .line 717
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 718
    move v1, v2

    goto :goto_0

    .line 717
    :cond_0
    nop

    .line 718
    :goto_0
    if-eqz v1, :cond_1d

    .line 719
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto/16 :goto_10

    .line 704
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 705
    move v1, v2

    goto :goto_1

    .line 704
    :cond_1
    nop

    .line 705
    :goto_1
    if-eq v1, v2, :cond_2

    .line 706
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 708
    goto/16 :goto_10

    .line 709
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->notifySyspropsChanged()V

    .line 712
    goto/16 :goto_10

    .line 688
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 689
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto/16 :goto_10

    .line 693
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 696
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 699
    goto/16 :goto_10

    .line 673
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 674
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 675
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 677
    goto/16 :goto_10

    .line 678
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->ping()V

    .line 681
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 683
    goto/16 :goto_10

    .line 663
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 664
    move v1, v2

    goto :goto_4

    .line 663
    :cond_7
    nop

    .line 664
    :goto_4
    if-eqz v1, :cond_1d

    .line 665
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 667
    goto/16 :goto_10

    .line 650
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 651
    move v1, v2

    goto :goto_5

    .line 650
    :cond_8
    nop

    .line 651
    :goto_5
    if-eq v1, v2, :cond_9

    .line 652
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_10

    .line 655
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->setHALInstrumentation()V

    .line 658
    goto/16 :goto_10

    .line 617
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 618
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 619
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_10

    .line 622
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 625
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 629
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 630
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 631
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 632
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 633
    :goto_7
    if-ge v1, p4, :cond_c

    .line 635
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 636
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 637
    nop

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 640
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 642
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_10

    .line 601
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 602
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_10

    .line 606
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_10

    .line 587
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 588
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto/16 :goto_10

    .line 592
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_10

    .line 571
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 572
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 573
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    goto/16 :goto_10

    .line 576
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 579
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 580
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 582
    goto/16 :goto_10

    .line 557
    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    .line 558
    move v1, v2

    goto :goto_b

    .line 557
    :cond_13
    nop

    .line 558
    :goto_b
    if-eq v1, v2, :cond_14

    .line 559
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 561
    goto/16 :goto_10

    .line 562
    :cond_14
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 565
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/ArrayList;)V

    .line 566
    goto/16 :goto_10

    .line 543
    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    .line 544
    move v1, v2

    goto :goto_c

    .line 543
    :cond_15
    nop

    .line 544
    :goto_c
    if-eq v1, v2, :cond_16

    .line 545
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 547
    goto/16 :goto_10

    .line 548
    :cond_16
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 551
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onAntennaStateChange(Z)V

    .line 552
    goto/16 :goto_10

    .line 528
    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    .line 529
    move v1, v2

    goto :goto_d

    .line 528
    :cond_17
    nop

    .line 529
    :goto_d
    if-eq v1, v2, :cond_18

    .line 530
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto :goto_10

    .line 533
    :cond_18
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;-><init>()V

    .line 536
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readFromParcel(Landroid/os/HwParcel;)V

    .line 537
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    .line 538
    goto :goto_10

    .line 513
    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    .line 514
    move v1, v2

    goto :goto_e

    .line 513
    :cond_19
    nop

    .line 514
    :goto_e
    if-eq v1, v2, :cond_1a

    .line 515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto :goto_10

    .line 518
    :cond_1a
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    .line 521
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 522
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    .line 523
    goto :goto_10

    .line 497
    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    .line 498
    move v1, v2

    goto :goto_f

    .line 497
    :cond_1b
    nop

    .line 498
    :goto_f
    if-eq v1, v2, :cond_1c

    .line 499
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 501
    goto :goto_10

    .line 502
    :cond_1c
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 505
    new-instance p3, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p3}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 506
    invoke-virtual {p3, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 507
    invoke-virtual {p0, p1, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    .line 508
    nop

    .line 726
    :cond_1d
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
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

    .line 450
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 476
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    return-object p0

    .line 479
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

    .line 483
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 441
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 470
    const/4 p1, 0x1

    return p1
.end method
