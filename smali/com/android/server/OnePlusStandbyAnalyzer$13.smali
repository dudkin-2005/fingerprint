.class synthetic Lcom/android/server/OnePlusStandbyAnalyzer$13;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SIM_ID:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

.field static final synthetic $SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4306
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_MOBILE_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_RX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$PACKET_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->NETWORK_WIFI_TX_DATA:Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    .line 3185
    :goto_3d
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    :try_start_46
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v4

    :goto_52
    :try_start_52
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v4

    .line 2259
    :goto_5e
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    :try_start_67
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v4

    :goto_73
    :try_start_73
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception v4

    :goto_7f
    :try_start_7f
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception v4

    :goto_8b
    :try_start_8b
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_96

    goto :goto_97

    :catch_96
    move-exception v4

    .line 2165
    :goto_97
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SIM_ID:[I

    :try_start_a0
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SIM_ID:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_ab

    goto :goto_ac

    :catch_ab
    move-exception v4

    :goto_ac
    :try_start_ac
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SIM_ID:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v4

    .line 1671
    :goto_b8
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    :try_start_c1
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cb} :catch_cc

    goto :goto_cd

    :catch_cc
    move-exception v4

    :goto_cd
    :try_start_cd
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    move-exception v4

    :goto_d9
    :try_start_d9
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_e4

    goto :goto_e5

    :catch_e4
    move-exception v4

    .line 1517
    :goto_e5
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    :try_start_ee
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_f8} :catch_f9

    goto :goto_fa

    :catch_f9
    move-exception v4

    :goto_fa
    :try_start_fa
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_104} :catch_105

    goto :goto_106

    :catch_105
    move-exception v4

    :goto_106
    :try_start_106
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_110} :catch_111

    goto :goto_112

    :catch_111
    move-exception v4

    :goto_112
    :try_start_112
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_11c} :catch_11d

    goto :goto_11e

    :catch_11d
    move-exception v4

    :goto_11e
    const/4 v4, 0x5

    :try_start_11f
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v5

    :goto_12b
    :try_start_12b
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_136
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_136} :catch_137

    goto :goto_138

    :catch_137
    move-exception v5

    :goto_138
    :try_start_138
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_143} :catch_144

    goto :goto_145

    :catch_144
    move-exception v5

    :goto_145
    :try_start_145
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_151} :catch_152

    goto :goto_153

    :catch_152
    move-exception v5

    :goto_153
    :try_start_153
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_15f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_153 .. :try_end_15f} :catch_160

    goto :goto_161

    :catch_160
    move-exception v5

    :goto_161
    :try_start_161
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_161 .. :try_end_16d} :catch_16e

    goto :goto_16f

    :catch_16e
    move-exception v5

    :goto_16f
    :try_start_16f
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_17b} :catch_17c

    goto :goto_17d

    :catch_17c
    move-exception v5

    :goto_17d
    :try_start_17d
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_189
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_189} :catch_18a

    goto :goto_18b

    :catch_18a
    move-exception v5

    :goto_18b
    :try_start_18b
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_197} :catch_198

    goto :goto_199

    :catch_198
    move-exception v5

    :goto_199
    :try_start_199
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_1a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_199 .. :try_end_1a5} :catch_1a6

    goto :goto_1a7

    :catch_1a6
    move-exception v5

    .line 1160
    :goto_1a7
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    :try_start_1b0
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1ba} :catch_1bb

    goto :goto_1bc

    :catch_1bb
    move-exception v5

    :goto_1bc
    :try_start_1bc
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c6} :catch_1c7

    goto :goto_1c8

    :catch_1c7
    move-exception v5

    :goto_1c8
    :try_start_1c8
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->REACH_120SEC_TIMEOUT:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_1d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d2} :catch_1d3

    goto :goto_1d4

    :catch_1d3
    move-exception v5

    :goto_1d4
    :try_start_1d4
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_1de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d4 .. :try_end_1de} :catch_1df

    goto :goto_1e0

    :catch_1df
    move-exception v5

    :goto_1e0
    :try_start_1e0
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_1ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1ea} :catch_1eb

    goto :goto_1ec

    :catch_1eb
    move-exception v4

    .line 445
    :goto_1ec
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    :try_start_1f5
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_1ff} :catch_200

    goto :goto_201

    :catch_200
    move-exception v0

    :goto_201
    :try_start_201
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_20b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_201 .. :try_end_20b} :catch_20c

    goto :goto_20d

    :catch_20c
    move-exception v0

    :goto_20d
    :try_start_20d
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_217} :catch_218

    goto :goto_219

    :catch_218
    move-exception v0

    :goto_219
    :try_start_219
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_223
    .catch Ljava/lang/NoSuchFieldError; {:try_start_219 .. :try_end_223} :catch_224

    goto :goto_225

    :catch_224
    move-exception v0

    :goto_225
    return-void
.end method
