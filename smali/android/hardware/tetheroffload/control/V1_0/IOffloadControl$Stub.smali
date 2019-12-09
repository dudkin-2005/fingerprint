.class public abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;
.super Landroid/os/HwBinder;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 679
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 682
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 724
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 725
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 726
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 727
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 728
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

    .line 700
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
        0x7bt
        0x0t
        0x30t
        0x6bt
        -0x37t
        0x5at
        0x7at
        -0x51t
        -0x14t
        0x1dt
        0x66t
        0xft
        0x6ft
        0x3et
        -0x61t
        0x76t
        -0x54t
        -0x75t
        -0x40t
        0x35t
        0x31t
        -0x6dt
        0x43t
        0x5et
        0x55t
        0x79t
        -0x55t
        -0x7dt
        0x3dt
        -0x5at
        0x19t
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

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

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

    .line 694
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 713
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 733
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 734
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_13

    .line 1084
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 1085
    move v1, v2

    goto :goto_0

    .line 1084
    :cond_0
    nop

    .line 1085
    :goto_0
    if-eqz v1, :cond_23

    .line 1086
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_13

    .line 1071
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 1072
    move v1, v2

    goto :goto_1

    .line 1071
    :cond_1
    nop

    .line 1072
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1073
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_13

    .line 1076
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->notifySyspropsChanged()V

    .line 1079
    goto/16 :goto_13

    .line 1055
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 1056
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 1057
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_13

    .line 1060
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1063
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1064
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1066
    goto/16 :goto_13

    .line 1040
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1041
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 1042
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1044
    goto/16 :goto_13

    .line 1045
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->ping()V

    .line 1048
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1050
    goto/16 :goto_13

    .line 1030
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 1031
    move v1, v2

    goto :goto_4

    .line 1030
    :cond_7
    nop

    .line 1031
    :goto_4
    if-eqz v1, :cond_23

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_13

    .line 1017
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 1018
    move v1, v2

    goto :goto_5

    .line 1017
    :cond_8
    nop

    .line 1018
    :goto_5
    if-eq v1, v2, :cond_9

    .line 1019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1021
    goto/16 :goto_13

    .line 1022
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setHALInstrumentation()V

    .line 1025
    goto/16 :goto_13

    .line 984
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 985
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 986
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 988
    goto/16 :goto_13

    .line 989
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 994
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 996
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 997
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 998
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 999
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1000
    :goto_7
    if-ge v1, p4, :cond_c

    .line 1002
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 1003
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1004
    nop

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1007
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1009
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1012
    goto/16 :goto_13

    .line 968
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 969
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_13

    .line 973
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_13

    .line 954
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 955
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 956
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 958
    goto/16 :goto_13

    .line 959
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 963
    goto/16 :goto_13

    .line 938
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 939
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 940
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_13

    .line 943
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 946
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 949
    goto/16 :goto_13

    .line 916
    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    .line 917
    move v1, v2

    goto :goto_b

    .line 916
    :cond_13
    nop

    .line 917
    :goto_b
    if-eqz v1, :cond_14

    .line 918
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 920
    goto/16 :goto_13

    .line 921
    :cond_14
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 925
    new-instance p4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;

    invoke-direct {p4, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V

    .line 933
    goto/16 :goto_13

    .line 894
    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    .line 895
    move v1, v2

    goto :goto_c

    .line 894
    :cond_15
    nop

    .line 895
    :goto_c
    if-eqz v1, :cond_16

    .line 896
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 898
    goto/16 :goto_13

    .line 899
    :cond_16
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 903
    new-instance p4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;

    invoke-direct {p4, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V

    .line 911
    goto/16 :goto_13

    .line 870
    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    .line 871
    move v1, v2

    goto :goto_d

    .line 870
    :cond_17
    nop

    .line 871
    :goto_d
    if-eqz v1, :cond_18

    .line 872
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 874
    goto/16 :goto_13

    .line 875
    :cond_18
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 881
    new-instance v5, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;

    invoke-direct {v5, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V

    .line 889
    goto/16 :goto_13

    .line 848
    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    .line 849
    move v1, v2

    goto :goto_e

    .line 848
    :cond_19
    nop

    .line 849
    :goto_e
    if-eqz v1, :cond_1a

    .line 850
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 852
    goto/16 :goto_13

    .line 853
    :cond_1a
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 857
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V

    .line 865
    goto/16 :goto_13

    .line 827
    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    .line 828
    move v1, v2

    goto :goto_f

    .line 827
    :cond_1b
    nop

    .line 828
    :goto_f
    if-eqz v1, :cond_1c

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto/16 :goto_13

    .line 832
    :cond_1c
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 835
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V

    .line 843
    goto/16 :goto_13

    .line 806
    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    .line 807
    move v1, v2

    goto :goto_10

    .line 806
    :cond_1d
    nop

    .line 807
    :goto_10
    if-eqz v1, :cond_1e

    .line 808
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto :goto_13

    .line 811
    :cond_1e
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 814
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V

    .line 822
    goto :goto_13

    .line 786
    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    .line 787
    move v1, v2

    goto :goto_11

    .line 786
    :cond_1f
    nop

    .line 787
    :goto_11
    if-eqz v1, :cond_20

    .line 788
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto :goto_13

    .line 791
    :cond_20
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    new-instance p1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V

    .line 801
    goto :goto_13

    .line 765
    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    .line 766
    move v1, v2

    goto :goto_12

    .line 765
    :cond_21
    nop

    .line 766
    :goto_12
    if-eqz v1, :cond_22

    .line 767
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto :goto_13

    .line 770
    :cond_22
    const-string p1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;

    move-result-object p1

    .line 773
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V

    .line 781
    nop

    .line 1093
    :cond_23
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 718
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 744
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 745
    return-object p0

    .line 747
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

    .line 751
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->registerService(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 709
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 738
    const/4 p1, 0x1

    return p1
.end method
