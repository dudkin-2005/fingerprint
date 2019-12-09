.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;
.super Landroid/os/HwBinder;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 660
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 702
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 703
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 704
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 705
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 706
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

    .line 678
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
        -0x29t
        0x4t
        0x64t
        -0x3bt
        0x17t
        -0x5ct
        -0x5ft
        -0x4bt
        0x16t
        0x77t
        0x30t
        -0x7ct
        0x37t
        0x75t
        -0x57t
        0x7ft
        0x45t
        0x51t
        0x2t
        -0x6ft
        -0x62t
        -0x6ct
        0x5bt
        0x4t
        -0x9t
        0x17t
        -0x47t
        -0x26t
        0x39t
        0xct
        0xft
        0x39t
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

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

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

    .line 672
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 691
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 711
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 712
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    .line 1078
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 1079
    move v1, v2

    goto :goto_0

    .line 1078
    :cond_0
    nop

    .line 1079
    :goto_0
    if-eqz v1, :cond_29

    .line 1080
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_16

    .line 1065
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 1066
    move v1, v2

    goto :goto_1

    .line 1065
    :cond_1
    nop

    .line 1066
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1067
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1069
    goto/16 :goto_16

    .line 1070
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->notifySyspropsChanged()V

    .line 1073
    goto/16 :goto_16

    .line 1049
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 1050
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 1051
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1053
    goto/16 :goto_16

    .line 1054
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1057
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1060
    goto/16 :goto_16

    .line 1034
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1035
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 1036
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1038
    goto/16 :goto_16

    .line 1039
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->ping()V

    .line 1042
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1044
    goto/16 :goto_16

    .line 1024
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 1025
    move v1, v2

    goto :goto_4

    .line 1024
    :cond_7
    nop

    .line 1025
    :goto_4
    if-eqz v1, :cond_29

    .line 1026
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto/16 :goto_16

    .line 1011
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 1012
    move v1, v2

    goto :goto_5

    .line 1011
    :cond_8
    nop

    .line 1012
    :goto_5
    if-eq v1, v2, :cond_9

    .line 1013
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_16

    .line 1016
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setHALInstrumentation()V

    .line 1019
    goto/16 :goto_16

    .line 978
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 979
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 980
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_16

    .line 983
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 986
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 990
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 991
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 992
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 993
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 994
    :goto_7
    if-ge v1, p4, :cond_c

    .line 996
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 997
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 998
    nop

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1001
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1003
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_16

    .line 962
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 963
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 964
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 966
    goto/16 :goto_16

    .line 967
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 970
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 973
    goto/16 :goto_16

    .line 948
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 949
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 950
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_16

    .line 953
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 957
    goto/16 :goto_16

    .line 932
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 933
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 934
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_16

    .line 937
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 943
    goto/16 :goto_16

    .line 917
    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_b

    .line 918
    :cond_13
    move v2, v1

    :goto_b
    if-eqz v2, :cond_14

    .line 919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 921
    goto/16 :goto_16

    .line 922
    :cond_14
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->close()V

    .line 925
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_16

    .line 900
    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_c

    .line 901
    :cond_15
    move v2, v1

    :goto_c
    if-eqz v2, :cond_16

    .line 902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_16

    .line 905
    :cond_16
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 908
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 909
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 910
    invoke-static {p3, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    goto/16 :goto_16

    .line 883
    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    goto :goto_d

    .line 884
    :cond_17
    move v2, v1

    :goto_d
    if-eqz v2, :cond_18

    .line 885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_16

    .line 888
    :cond_18
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 891
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 892
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-static {p3, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 895
    goto/16 :goto_16

    .line 865
    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    goto :goto_e

    .line 866
    :cond_19
    move v2, v1

    :goto_e
    if-eqz v2, :cond_1a

    .line 867
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto/16 :goto_16

    .line 870
    :cond_1a
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 874
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setConfigFlag(IZ)I

    move-result p1

    .line 875
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 876
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 877
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 878
    goto/16 :goto_16

    .line 844
    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    .line 845
    move v1, v2

    goto :goto_f

    .line 844
    :cond_1b
    nop

    .line 845
    :goto_f
    if-eqz v1, :cond_1c

    .line 846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_16

    .line 849
    :cond_1c
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 852
    new-instance p2, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V

    .line 860
    goto/16 :goto_16

    .line 829
    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    goto :goto_10

    .line 830
    :cond_1d
    move v2, v1

    :goto_10
    if-eqz v2, :cond_1e

    .line 831
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_16

    .line 834
    :cond_1e
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->stopProgramListUpdates()V

    .line 837
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_16

    .line 811
    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    goto :goto_11

    .line 812
    :cond_1f
    move v2, v1

    :goto_11
    if-eqz v2, :cond_20

    .line 813
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_16

    .line 816
    :cond_20
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 819
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readFromParcel(Landroid/os/HwParcel;)V

    .line 820
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result p1

    .line 821
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_16

    .line 796
    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    goto :goto_12

    .line 797
    :cond_21
    move v2, v1

    :goto_12
    if-eqz v2, :cond_22

    .line 798
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto/16 :goto_16

    .line 801
    :cond_22
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->cancel()V

    .line 804
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    goto/16 :goto_16

    .line 779
    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    goto :goto_13

    .line 780
    :cond_23
    move v2, v1

    :goto_13
    if-eqz v2, :cond_24

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto/16 :goto_16

    .line 784
    :cond_24
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 787
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->step(Z)I

    move-result p1

    .line 788
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto :goto_16

    .line 761
    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    goto :goto_14

    .line 762
    :cond_25
    move v2, v1

    :goto_14
    if-eqz v2, :cond_26

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_16

    .line 766
    :cond_26
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 770
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->scan(ZZ)I

    move-result p1

    .line 771
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto :goto_16

    .line 743
    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    goto :goto_15

    .line 744
    :cond_27
    move v2, v1

    :goto_15
    if-eqz v2, :cond_28

    .line 745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto :goto_16

    .line 748
    :cond_28
    const-string p1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 751
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 752
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p1

    .line 753
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    nop

    .line 1087
    :cond_29
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    .line 696
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 722
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 723
    return-object p0

    .line 725
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

    .line 729
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->registerService(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 716
    const/4 p1, 0x1

    return p1
.end method
