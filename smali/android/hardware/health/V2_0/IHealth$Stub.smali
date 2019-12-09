.class public abstract Landroid/hardware/health/V2_0/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 710
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 752
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 753
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 754
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 755
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 756
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

    .line 728
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
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
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

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.0::IHealth"

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

    .line 722
    const-string v0, "android.hardware.health@2.0::IHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 741
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 761
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 762
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_17

    .line 1169
    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 1170
    move v1, v2

    goto :goto_0

    .line 1169
    :cond_0
    nop

    .line 1170
    :goto_0
    if-eqz v1, :cond_2b

    .line 1171
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto/16 :goto_17

    .line 1156
    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    .line 1157
    move v1, v2

    goto :goto_1

    .line 1156
    :cond_1
    nop

    .line 1157
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_17

    .line 1161
    :cond_2
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->notifySyspropsChanged()V

    .line 1164
    goto/16 :goto_17

    .line 1140
    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 1141
    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 1142
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1144
    goto/16 :goto_17

    .line 1145
    :cond_4
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1148
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1151
    goto/16 :goto_17

    .line 1125
    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1126
    :cond_5
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 1127
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1129
    goto/16 :goto_17

    .line 1130
    :cond_6
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->ping()V

    .line 1133
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_17

    .line 1115
    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    .line 1116
    move v1, v2

    goto :goto_4

    .line 1115
    :cond_7
    nop

    .line 1116
    :goto_4
    if-eqz v1, :cond_2b

    .line 1117
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_17

    .line 1102
    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    .line 1103
    move v1, v2

    goto :goto_5

    .line 1102
    :cond_8
    nop

    .line 1103
    :goto_5
    if-eq v1, v2, :cond_9

    .line 1104
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1106
    goto/16 :goto_17

    .line 1107
    :cond_9
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->setHALInstrumentation()V

    .line 1110
    goto/16 :goto_17

    .line 1069
    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 1070
    :cond_a
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 1071
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto/16 :goto_17

    .line 1074
    :cond_b
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1077
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1081
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1082
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1083
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1084
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1085
    :goto_7
    if-ge v1, p4, :cond_c

    .line 1087
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 1088
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1089
    nop

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1092
    :cond_c
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1094
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1097
    goto/16 :goto_17

    .line 1053
    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 1054
    :cond_d
    move v2, v1

    :goto_8
    if-eqz v2, :cond_e

    .line 1055
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1057
    goto/16 :goto_17

    .line 1058
    :cond_e
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1061
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_17

    .line 1039
    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_9

    .line 1040
    :cond_f
    move v2, v1

    :goto_9
    if-eqz v2, :cond_10

    .line 1041
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_17

    .line 1044
    :cond_10
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto/16 :goto_17

    .line 1023
    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_a

    .line 1024
    :cond_11
    move v2, v1

    :goto_a
    if-eqz v2, :cond_12

    .line 1025
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_17

    .line 1028
    :cond_12
    const-string p1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1031
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_17

    .line 1003
    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    .line 1004
    move v1, v2

    goto :goto_b

    .line 1003
    :cond_13
    nop

    .line 1004
    :goto_b
    if-eqz v1, :cond_14

    .line 1005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_17

    .line 1008
    :cond_14
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$9;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 1018
    goto/16 :goto_17

    .line 983
    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    .line 984
    move v1, v2

    goto :goto_c

    .line 983
    :cond_15
    nop

    .line 984
    :goto_c
    if-eqz v1, :cond_16

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_17

    .line 988
    :cond_16
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$8;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    .line 998
    goto/16 :goto_17

    .line 963
    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    .line 964
    move v1, v2

    goto :goto_d

    .line 963
    :cond_17
    nop

    .line 964
    :goto_d
    if-eqz v1, :cond_18

    .line 965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_17

    .line 968
    :cond_18
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$7;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    .line 978
    goto/16 :goto_17

    .line 943
    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    .line 944
    move v1, v2

    goto :goto_e

    .line 943
    :cond_19
    nop

    .line 944
    :goto_e
    if-eqz v1, :cond_1a

    .line 945
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_17

    .line 948
    :cond_1a
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$6;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 958
    goto/16 :goto_17

    .line 923
    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    .line 924
    move v1, v2

    goto :goto_f

    .line 923
    :cond_1b
    nop

    .line 924
    :goto_f
    if-eqz v1, :cond_1c

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_17

    .line 928
    :cond_1c
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$5;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    .line 938
    goto/16 :goto_17

    .line 903
    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    .line 904
    move v1, v2

    goto :goto_10

    .line 903
    :cond_1d
    nop

    .line 904
    :goto_10
    if-eqz v1, :cond_1e

    .line 905
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_17

    .line 908
    :cond_1e
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$4;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 918
    goto/16 :goto_17

    .line 883
    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    .line 884
    move v1, v2

    goto :goto_11

    .line 883
    :cond_1f
    nop

    .line 884
    :goto_11
    if-eqz v1, :cond_20

    .line 885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_17

    .line 888
    :cond_20
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 898
    goto/16 :goto_17

    .line 863
    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    .line 864
    move v1, v2

    goto :goto_12

    .line 863
    :cond_21
    nop

    .line 864
    :goto_12
    if-eqz v1, :cond_22

    .line 865
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_17

    .line 868
    :cond_22
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 878
    goto/16 :goto_17

    .line 843
    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23

    .line 844
    move v1, v2

    goto :goto_13

    .line 843
    :cond_23
    nop

    .line 844
    :goto_13
    if-eqz v1, :cond_24

    .line 845
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_17

    .line 848
    :cond_24
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 858
    goto/16 :goto_17

    .line 827
    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25

    goto :goto_14

    .line 828
    :cond_25
    move v2, v1

    :goto_14
    if-eqz v2, :cond_26

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto :goto_17

    .line 832
    :cond_26
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->update()I

    move-result p1

    .line 835
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto :goto_17

    .line 810
    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27

    goto :goto_15

    .line 811
    :cond_27
    move v2, v1

    :goto_15
    if-eqz v2, :cond_28

    .line 812
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto :goto_17

    .line 815
    :cond_28
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 818
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 819
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 822
    goto :goto_17

    .line 793
    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    goto :goto_16

    .line 794
    :cond_29
    move v2, v1

    :goto_16
    if-eqz v2, :cond_2a

    .line 795
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 797
    goto :goto_17

    .line 798
    :cond_2a
    const-string p1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 801
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 802
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    nop

    .line 1178
    :cond_2b
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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

    .line 746
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 772
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 773
    return-object p0

    .line 775
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

    .line 779
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerService(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 737
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 766
    const/4 p1, 0x1

    return p1
.end method
