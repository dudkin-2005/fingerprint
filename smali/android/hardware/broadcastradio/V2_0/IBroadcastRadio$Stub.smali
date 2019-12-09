.class public abstract Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;
.super Landroid/os/HwBinder;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 513
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 555
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 556
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 557
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 558
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 559
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

    .line 531
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
        0x44t
        0x1t
        0x7ct
        0x42t
        -0x1at
        -0xct
        -0x28t
        -0x35t
        0x30t
        -0x10t
        0x7et
        -0x4ft
        -0x26t
        0x4t
        0x54t
        0xat
        -0x68t
        0x73t
        0x6at
        0x33t
        0x6at
        -0x3et
        -0x74t
        0x7et
        0xet
        -0x2et
        -0x1at
        -0x62t
        0x15t
        -0x77t
        -0x8t
        -0x2ft
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

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

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

    .line 525
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 544
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 564
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 565
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_11

    .line 859
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 860
    move v1, v2

    goto :goto_0

    .line 859
    :cond_0
    nop

    .line 860
    :goto_0
    if-eqz v1, :cond_1f

    .line 861
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    goto/16 :goto_11

    .line 846
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 847
    move v1, v2

    goto :goto_1

    .line 846
    :cond_1
    nop

    .line 847
    :goto_1
    if-eq v1, v2, :cond_2

    .line 848
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 850
    goto/16 :goto_11

    .line 851
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->notifySyspropsChanged()V

    .line 854
    goto/16 :goto_11

    .line 830
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 831
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 832
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 834
    goto/16 :goto_11

    .line 835
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 838
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 839
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 840
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 841
    goto/16 :goto_11

    .line 815
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 816
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 817
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_11

    .line 820
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->ping()V

    .line 823
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 825
    goto/16 :goto_11

    .line 805
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 806
    move v1, v2

    goto :goto_4

    .line 805
    :cond_7
    nop

    .line 806
    :goto_4
    if-eqz v1, :cond_1f

    .line 807
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 809
    goto/16 :goto_11

    .line 792
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 793
    move v1, v2

    goto :goto_5

    .line 792
    :cond_8
    nop

    .line 793
    :goto_5
    if-eq v1, v2, :cond_9

    .line 794
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_11

    .line 797
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->setHALInstrumentation()V

    .line 800
    goto/16 :goto_11

    .line 759
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 760
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    goto/16 :goto_11

    .line 764
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 767
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 769
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 771
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 772
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 773
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 774
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 775
    :goto_7
    if-ge v1, p4, :cond_c

    .line 777
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 778
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 779
    nop

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 782
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 784
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 787
    goto/16 :goto_11

    .line 743
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 744
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto/16 :goto_11

    .line 748
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto/16 :goto_11

    .line 729
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 730
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto/16 :goto_11

    .line 734
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 738
    goto/16 :goto_11

    .line 713
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 714
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_11

    .line 718
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 724
    goto/16 :goto_11

    .line 691
    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    .line 692
    move v1, v2

    goto :goto_b

    .line 691
    :cond_13
    nop

    .line 692
    :goto_b
    if-eqz v1, :cond_14

    .line 693
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 695
    goto/16 :goto_11

    .line 696
    :cond_14
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;

    move-result-object p2

    .line 700
    new-instance p4, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$4;

    invoke-direct {p4, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$4;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 708
    goto/16 :goto_11

    .line 674
    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_c

    .line 675
    :cond_15
    move v2, v1

    :goto_c
    if-eqz v2, :cond_16

    .line 676
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto/16 :goto_11

    .line 679
    :cond_16
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 682
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getImage(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 683
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 684
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    goto/16 :goto_11

    .line 653
    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    .line 654
    move v1, v2

    goto :goto_d

    .line 653
    :cond_17
    nop

    .line 654
    :goto_d
    if-eqz v1, :cond_18

    .line 655
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    goto/16 :goto_11

    .line 658
    :cond_18
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    move-result-object p1

    .line 661
    new-instance p2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;

    invoke-direct {p2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 669
    goto/16 :goto_11

    .line 633
    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    .line 634
    move v1, v2

    goto :goto_e

    .line 633
    :cond_19
    nop

    .line 634
    :goto_e
    if-eqz v1, :cond_1a

    .line 635
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 637
    goto :goto_11

    .line 638
    :cond_1a
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 648
    goto :goto_11

    .line 612
    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    .line 613
    move v1, v2

    goto :goto_f

    .line 612
    :cond_1b
    nop

    .line 613
    :goto_f
    if-eqz v1, :cond_1c

    .line 614
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto :goto_11

    .line 617
    :cond_1c
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 620
    new-instance p2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 628
    goto :goto_11

    .line 596
    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    goto :goto_10

    .line 597
    :cond_1d
    move v2, v1

    :goto_10
    if-eqz v2, :cond_1e

    .line 598
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto :goto_11

    .line 601
    :cond_1e
    const-string p1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object p1

    .line 604
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p1, p3}, Landroid/hardware/broadcastradio/V2_0/Properties;->writeToParcel(Landroid/os/HwParcel;)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    nop

    .line 868
    :cond_1f
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
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

    .line 549
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 575
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 576
    return-object p0

    .line 578
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

    .line 582
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 540
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 569
    const/4 p1, 0x1

    return p1
.end method
