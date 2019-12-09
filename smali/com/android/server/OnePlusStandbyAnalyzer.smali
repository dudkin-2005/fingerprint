.class public Lcom/android/server/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;,
        Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static DEBUG_ONEPLUS:Z = false

.field static DEBUG_STANDBY:Z = false

.field private static DIAGNOSIS_ISSUE_POWER_OTHER:I = 0x0

.field public static FAKE_LEVEL_DROP:I = 0x0

.field private static final FIX_DUMP_ONE:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final INVALID_UID:I = -0x3e7

.field private static final MAX_DUMP_COUNT:I = 0x3

.field private static final MAX_RECORD_COUNT:I = 0x28

.field public static final MDM_DETAIL:Ljava/lang/String; = "dl"

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MDM_PACKAGE:Ljava/lang/String; = "pn"

.field public static final MDM_REASON_TYPE:Ljava/lang/String; = "tp"

.field public static final PROP_QXDM_IF_NEED_PACK:Ljava/lang/String; = "persist.sys.standby_qxdm"

.field public static final PROP_QXDM_IF_UNDER_RECORDING:Ljava/lang/String; = "persist.sys.standby_qxdm_recording"

.field public static final PROP_QXDM_VENDOR_CLEAN:Ljava/lang/String; = "persist.sys.qxdm_clean_old"

.field private static final PROP_STANDBY_DEBUG_ON:Ljava/lang/String; = "persist.sys.standby_debug"

.field public static final QUALCOMM_MHZ:I = 0x124f800

.field private static final QXDM_RECHECK_MAX:I = 0x3

.field private static final READ_TIMEOUT:J = 0x1388L

.field public static RPM_FILE:Ljava/lang/String; = null

.field public static RPM_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static final STANDBY_ASSIST_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field public static final STANDBY_RPM_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static final USERSPACE_WAKELOCK:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static WIFI_WAKEUP_FILE:Ljava/lang/String; = null

.field public static WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String; = null

.field private static mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA:I = 0x0

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I = 0x0

.field private static mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F = 0.0f

.field private static mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J = 0x0L

.field private static mRPM_TIME_SLM_SEC_CRITERIA:J = 0x0L

.field private static mSIGNAL_BAD_CRITERIA:F = 0.0f

.field private static mSIGNAL_BAD_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static final mVersion:Ljava/lang/String; = "2.02"


# instance fields
.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor4:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor5:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudio_WL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mByPassed_KWL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mDiagnosisAsNormal:Z

.field private mDiagnosisInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosis_ASSIST_Info:Ljava/lang/String;

.field private mDiagnosis_RPM_Info:Ljava/lang/String;

.field private mEverEnterDeepDoze:Z

.field private mEverQXDMRecordingByMyself:Z

.field private mIfEverGenQXDMToCleanUp:Z

.field private mIsQuickSimulate:Z

.field private mIsSDM845:Z

.field mKWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastQXDMGrabTimeStamp:J

.field private mMDMEnabled:Z

.field private mMiddleCheckPeriod:J

.field private mMinimumQXDMGrabPeriod:J

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQXDMGrabGapAfterStandbyStart:J

.field private mQXDMGrabMechanism:Z

.field private mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

.field private mQXDM_Ready_Check_Count:I

.field private mQXDM_Recoding:Z

.field mRPMInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMModePattern:Ljava/util/regex/Pattern;

.field private mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

.field private mRPM_BaseString:Ljava/lang/String;

.field private mRPM_Master_Pattern_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

.field private mRPM_SDM845_BaseString:Ljava/lang/String;

.field mRawRealtimeOfEnd:J

.field mRawRealtimeOfStart:J

.field mRawUptimeOfEnd:J

.field mRawUptimeOfStart:J

.field mSignal_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_End_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_Start_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfEndDeepidle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStartDeepIdle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandbyAbnReportingEnabled:Z

.field private mStandby_Battery_Drop:I

.field private mStandby_KernelSpaceWL_Ms:J

.field private mStandby_MiniumPeriod:J

.field private mStandby_Ms:J

.field private mStandby_SignalBad_Ms:J

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_Uptime_Ms:J

.field private mStandby_UserSpaceWL_Ms:J

.field private mStandby_WR_Count:J

.field private mStandby_WUA_Count:I

.field private mStandby_mA:F

.field private mStandby_mA_Criteria:F

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field mTeleChgInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUidPacketDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidPacket_Diff_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUADiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnderStandbyPeriod:Z

.field mWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiWakeupPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    .line 64
    const-string/jumbo v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    .line 174
    const/16 v0, 0x15

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    .line 178
    const/16 v0, 0x32

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    .line 680
    const-string v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 681
    const-string v0, "/d/rpmh/stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    .line 682
    const-string v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 683
    const-string v0, "/d/rpmh/master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    .line 858
    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 861
    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    .line 897
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 898
    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 899
    const/16 v1, 0xc8

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 900
    const v1, 0x4479c000    # 999.0f

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 901
    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 905
    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    .line 908
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 909
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 910
    const/16 v0, 0x96

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 911
    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 912
    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 915
    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    .line 918
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    .line 921
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;Z)V
    .registers 9
    .param p1, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "deviceIdleController"    # Lcom/android/server/DeviceIdleController;
    .param p3, "ifReporting"    # Z

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    .line 140
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->NOT_AVAILABLE:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 147
    const-wide/32 v1, 0xa4cb800

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    .line 152
    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    .line 156
    const-wide/32 v1, 0xa4cb80

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    .line 161
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 164
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 177
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    .line 676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    .line 678
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 679
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 784
    const-string v2, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    .line 815
    const-string v2, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    .line 820
    const-string v2, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    .line 822
    const-string v2, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    .line 824
    const-string v2, "\\n\\tVersion:0x([0-9a-f]*)\\n\\tSleep Count:0x([0-9a-f]*)\\n\\tSleep Last Entered At:0x([0-9a-f]*)\\n\\tSleep Last Exited At:0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    .line 862
    const-string/jumbo v2, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    .line 1012
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$1;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$1;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2072
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$2;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$2;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    .line 2721
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$3;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$3;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    .line 2819
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$4;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$4;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    .line 3983
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$8;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$8;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor5:Ljava/util/Comparator;

    .line 4013
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$9;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$9;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    .line 4077
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$10;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$10;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    .line 945
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 946
    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_standby.txt"

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 947
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 948
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 949
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 950
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    .line 951
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 953
    iput-boolean p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    .line 954
    const-string v0, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init reporting-flag to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "platformStr":Ljava/lang/String;
    const-string/jumbo v2, "sdm845"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    const-string/jumbo v2, "msmnile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 959
    :cond_121
    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 960
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 961
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 962
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 966
    :cond_12f
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "PowerManagerService.WakeLocks"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "NETLINK"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioMix"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioDirectOut"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioOffload"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioIn"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->initRPMRexMap()V

    .line 981
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->startTelephonyMonitor()V

    .line 982
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->cleanUpTele()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/OnePlusStandbyAnalyzer;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # F

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # F

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    return p1
.end method

.method static synthetic access$2002(Lcom/android/server/OnePlusStandbyAnalyzer;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRootCause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatteryOutlierIfAppropriate(Z)V

    return-void
.end method

.method static synthetic access$2400()J
    .registers 2

    .line 59
    sget-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;)Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 59
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private calculateDiff()V
    .registers 24

    .line 3837
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3840
    .local v1, "startTime":J
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3842
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    .line 3846
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    .line 3848
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    .line 3849
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    if-eqz v5, :cond_b4

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    if-eqz v5, :cond_b4

    .line 3850
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3851
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3852
    .local v7, "kwlname":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 3853
    .local v8, "holding":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3854
    .local v16, "end":J
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 3855
    .local v10, "start":Ljava/lang/Long;
    if-eqz v10, :cond_66

    .line 3856
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v8, v16, v11

    .line 3861
    .end local v8    # "holding":J
    .end local v10    # "start":Ljava/lang/Long;
    .local v12, "start":Ljava/lang/Long;
    .local v14, "holding":J
    :goto_63
    move-wide v14, v8

    move-object v12, v10

    goto :goto_6d

    .line 3858
    .end local v12    # "start":Ljava/lang/Long;
    .end local v14    # "holding":J
    .restart local v8    # "holding":J
    .restart local v10    # "start":Ljava/lang/Long;
    :cond_66
    move-wide/from16 v8, v16

    .line 3859
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_63

    .line 3861
    .end local v8    # "holding":J
    .end local v10    # "start":Ljava/lang/Long;
    .restart local v12    # "start":Ljava/lang/Long;
    .restart local v14    # "holding":J
    :goto_6d
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    new-instance v10, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v8, v10

    move-object v9, v7

    move-object v3, v10

    move-wide v10, v14

    move-object/from16 v20, v12

    move-object v4, v13

    move-wide/from16 v12, v18

    .end local v12    # "start":Ljava/lang/Long;
    .local v20, "start":Ljava/lang/Long;
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-wide v5, v14

    move-wide/from16 v14, v16

    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14    # "holding":J
    .local v5, "holding":J
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 3864
    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    .line 3866
    .end local v5    # "holding":J
    .end local v7    # "kwlname":Ljava/lang/String;
    .end local v16    # "end":J
    .end local v20    # "start":Ljava/lang/Long;
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_95
    nop

    .line 3850
    move-object/from16 v5, v21

    const-wide/16 v3, 0x0

    goto :goto_31

    .line 3868
    :cond_9b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    .line 3869
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3871
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3876
    :cond_b4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    .line 3878
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3879
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_14c

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    if-eqz v3, :cond_14c

    .line 3880
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_130

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3881
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3882
    .local v6, "wrname":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3883
    .local v7, "end":I
    const/4 v8, 0x0

    .line 3884
    .local v8, "count":I
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3885
    .local v9, "start":Ljava/lang/Integer;
    if-eqz v9, :cond_10d

    .line 3886
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v10, v11

    .end local v8    # "count":I
    .local v10, "count":I
    goto :goto_11b

    .line 3888
    .end local v10    # "count":I
    .restart local v8    # "count":I
    :cond_10d
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3889
    .end local v8    # "count":I
    .restart local v10    # "count":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3891
    :goto_11b
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v6, v10, v12, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;-><init>(Ljava/lang/String;III)V

    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3894
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "wrname":Ljava/lang/String;
    .end local v7    # "end":I
    .end local v9    # "start":Ljava/lang/Integer;
    .end local v10    # "count":I
    goto :goto_d2

    .line 3897
    :cond_130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    .line 3898
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3900
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$7;

    invoke-direct {v5, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$7;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3910
    :cond_14c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    .line 3912
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3913
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v3, :cond_191

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v3, :cond_191

    .line 3914
    move v3, v4

    .local v3, "i":I
    :goto_160
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v5, :cond_191

    .line 3915
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 3916
    .local v5, "diff":J
    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3918
    const/4 v7, 0x1

    if-gt v3, v7, :cond_18e

    .line 3919
    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3914
    .end local v5    # "diff":J
    :cond_18e
    add-int/lit8 v3, v3, 0x1

    goto :goto_160

    .line 3924
    .end local v3    # "i":I
    :cond_191
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V

    .line 3927
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3933
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    .line 3936
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3945
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3948
    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    .line 3951
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1c5

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeLockRanking(Ljava/util/List;)V

    .line 3952
    :cond_1c5
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1ce

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpKernalWakelockRanking(Ljava/util/List;)V

    .line 3953
    :cond_1ce
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1d7

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeupReasonRanking(Ljava/util/List;)V

    .line 3955
    :cond_1d7
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1e0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpPacketInfoRanking(Ljava/util/List;)V

    .line 3956
    :cond_1e0
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1eb

    const-string v3, "Diff-Signal"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 3957
    :cond_1eb
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_1f6

    const-string v3, "Diff-RPM"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3958
    :cond_1f6
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_201

    const-string v3, "Diff-RPMMaster"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3959
    :cond_201
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_20c

    const-string v3, "Diff-WiFiWakeUp"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3961
    :cond_20c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[calculateDiff] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3962
    return-void
.end method

.method private calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2773
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_51

    if-eqz p2, :cond_51

    .line 2775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    .line 2776
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2777
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2778
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 2779
    .local v3, "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2780
    .local v4, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2781
    .local v5, "startInfo":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 2782
    .local v6, "start":I
    if-eqz v5, :cond_44

    .line 2783
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2784
    sub-int v2, v4, v6

    goto :goto_46

    .line 2786
    :cond_44
    const/4 v6, 0x0

    .line 2787
    move v2, v4

    .line 2790
    :goto_46
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2791
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .end local v2    # "count":I
    .end local v3    # "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .end local v4    # "end":I
    .end local v5    # "startInfo":Ljava/lang/Integer;
    .end local v6    # "start":I
    goto :goto_13

    .line 2793
    :cond_51
    return-void
.end method

.method private calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 4497
    .local p1, "sippers_start":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .local p2, "sippers_end":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct {p0, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->cloneSipper_List(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 4500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 4503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 4505
    if-eqz p1, :cond_9c

    if-eqz p2, :cond_9c

    .line 4506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## sippers size[start, end]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4512
    const/4 v0, 0x0

    .line 4513
    .local v0, "matchedCount":I
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v1, :cond_96

    .line 4514
    const/4 v1, 0x0

    .line 4516
    .local v1, "getMatched":Z
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "matchedCount":I
    :goto_43
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_89

    .line 4517
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 4518
    .local v4, "bs_end":Lcom/android/internal/os/BatterySipper;
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_5b

    .line 4519
    iput-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 4522
    :cond_5b
    move v5, v2

    .local v5, "j":I
    :goto_5c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_78

    .line 4523
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 4524
    .local v6, "bs_start":Lcom/android/internal/os/BatterySipper;
    invoke-direct {p0, v4, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 4529
    invoke-direct {p0, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    .line 4530
    const/4 v1, 0x1

    .line 4531
    add-int/lit8 v3, v3, 0x1

    .line 4532
    goto :goto_78

    .line 4522
    .end local v6    # "bs_start":Lcom/android/internal/os/BatterySipper;
    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 4536
    .end local v5    # "j":I
    :cond_78
    :goto_78
    if-nez v1, :cond_7f

    .line 4537
    const-string v5, "No-Match"

    invoke-direct {p0, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4540
    :cond_7f
    iget-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 4516
    .end local v4    # "bs_end":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 4543
    .end local v0    # "i":I
    :cond_89
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$11;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$11;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4551
    .end local v1    # "getMatched":Z
    nop

    .line 4554
    move v0, v3

    goto :goto_9b

    .line 4552
    .end local v3    # "matchedCount":I
    .local v0, "matchedCount":I
    :cond_96
    const-string v1, "## fetal error, mStandby_Sipper_List == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4554
    :goto_9b
    return-void

    .line 4508
    .end local v0    # "matchedCount":I
    :cond_9c
    const-string v0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4509
    return-void
.end method

.method private calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3992
    if-eqz v1, :cond_70

    if-eqz p2, :cond_70

    .line 3994
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    .line 3995
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3996
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v5, 0x0

    .line 3997
    .local v5, "holding":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3998
    .local v16, "end":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 3999
    .local v7, "start":Ljava/lang/Long;
    if-eqz v7, :cond_42

    .line 4000
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v5, v16, v8

    goto :goto_4a

    .line 4002
    :cond_42
    move-wide/from16 v5, v16

    .line 4003
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4005
    :goto_4a
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v8, v15

    move-wide v10, v5

    move-object v1, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4008
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "holding":J
    .end local v7    # "start":Ljava/lang/Long;
    .end local v16    # "end":J
    nop

    .line 3995
    move-object/from16 v1, p1

    goto :goto_17

    .line 4010
    :cond_69
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4012
    :cond_70
    return-void
.end method

.method private calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;)V"
        }
    .end annotation

    .line 4022
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    .line 4024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    .line 4026
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    .line 4027
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4028
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    const/4 v2, 0x0

    .line 4029
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4030
    .local v3, "uid":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 4031
    .local v4, "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    iget v5, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4032
    .local v5, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 4033
    .local v6, "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    const/4 v7, 0x0

    .line 4034
    .local v7, "start":I
    if-eqz v6, :cond_43

    .line 4035
    iget v7, v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4036
    sub-int v2, v5, v7

    goto :goto_45

    .line 4038
    :cond_43
    const/4 v7, 0x0

    .line 4039
    move v2, v5

    .line 4042
    :goto_45
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v2, v7, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(IIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    iget v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    .line 4045
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v2    # "count":I
    .end local v3    # "uid":Ljava/lang/Integer;
    .end local v4    # "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v5    # "end":I
    .end local v6    # "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v7    # "start":I
    goto :goto_16

    .line 4047
    :cond_59
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4049
    :cond_60
    return-void
.end method

.method private calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2796
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 2798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 2799
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2800
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2801
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    .line 2802
    .local v3, "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2803
    .local v4, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2804
    .local v5, "startInfo":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 2805
    .local v6, "start":I
    if-eqz v5, :cond_44

    .line 2806
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2807
    sub-int v2, v4, v6

    goto :goto_46

    .line 2809
    :cond_44
    const/4 v6, 0x0

    .line 2810
    move v2, v4

    .line 2813
    :goto_46
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2814
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .end local v2    # "count":I
    .end local v3    # "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .end local v4    # "end":I
    .end local v5    # "startInfo":Ljava/lang/Integer;
    .end local v6    # "start":I
    goto :goto_13

    .line 2816
    :cond_51
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2818
    :cond_58
    return-void
.end method

.method private checkifRPMAbnormal(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2826
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    const/4 v0, 0x0

    .line 2827
    .local v0, "result":Z
    if-eqz p1, :cond_28

    .line 2828
    const/4 v1, 0x0

    .line 2828
    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 2830
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 2831
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVminAbnormal()Z

    move-result v2

    if-ne v2, v3, :cond_25

    .line 2832
    const/4 v0, 0x1

    .line 2833
    goto :goto_2e

    .line 2828
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2838
    .end local v1    # "i":I
    :cond_28
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2840
    :cond_2e
    :goto_2e
    return v0
.end method

.method private checkifRPMCanDeepSleep(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2843
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    const/4 v0, 0x0

    .line 2844
    .local v0, "result":Z
    if-eqz p1, :cond_28

    .line 2845
    const/4 v1, 0x0

    .line 2845
    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 2847
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 2848
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVimCanDeepSleep()Z

    move-result v2

    if-ne v2, v3, :cond_25

    .line 2849
    const/4 v0, 0x1

    .line 2850
    goto :goto_2e

    .line 2845
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2855
    .end local v1    # "i":I
    :cond_28
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2857
    :cond_2e
    :goto_2e
    return v0
.end method

.method private cleanUpTele()V
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1008
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->cleanUp()V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1011
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private cloneSipper_List(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 4481
    .local p1, "ori_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .line 4482
    .local v0, "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p1, :cond_26

    .line 4483
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 4484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 4486
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;

    invoke-direct {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4487
    .end local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    goto :goto_11

    .line 4489
    :cond_26
    const-string v1, "## fetal error, ori_list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4491
    :cond_2b
    return-object v0
.end method

.method private dumpAudioRanking(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
            ">;)V"
        }
    .end annotation

    .line 4106
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;>;"
    if-eqz p1, :cond_2f

    .line 4107
    const/4 v0, 0x0

    .line 4108
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4110
    add-int/lit8 v0, v0, 0x1

    .line 4111
    const/16 v2, 0xa

    if-le v0, v2, :cond_2c

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_2f

    .line 4108
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4114
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method private dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    .line 4387
    .local p2, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 4388
    const-wide/16 v0, 0x0

    .line 4389
    .local v0, "allPower":D
    const/4 v2, 0x0

    .line 4390
    .local v2, "count":I
    const/4 v3, 0x0

    .line 4390
    .local v3, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 4391
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 4392
    .local v4, "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 4393
    if-eqz p3, :cond_23

    if-eqz p3, :cond_26

    const/16 v5, 0xa

    if-ge v2, v5, :cond_26

    .line 4394
    :cond_23
    invoke-direct {p0, p1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4395
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 4390
    .end local v4    # "bs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4397
    .end local v3    # "i":I
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], accumulated sum-up totalPowerMah="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4398
    .end local v0    # "allPower":D
    .end local v2    # "count":I
    goto :goto_4e

    .line 4399
    :cond_48
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4401
    :goto_4e
    return-void
.end method

.method private dumpCriteria()V
    .registers 5

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1578
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |SB=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |MINOR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_TSLM_SEC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SAD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SLPI_SC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method private dumpKernalWakelockRanking(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4059
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_2f

    .line 4060
    const/4 v0, 0x0

    .line 4061
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4063
    add-int/lit8 v0, v0, 0x1

    .line 4064
    const/16 v2, 0xa

    if-le v0, v2, :cond_2c

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_2f

    .line 4061
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4067
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method private dumpPacketInfoRanking(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;)V"
        }
    .end annotation

    .line 4116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    if-eqz p1, :cond_2f

    .line 4117
    const/4 v0, 0x0

    .line 4118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4120
    add-int/lit8 v0, v0, 0x1

    .line 4121
    const/16 v2, 0xa

    if-le v0, v2, :cond_2c

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_2f

    .line 4118
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4124
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method private dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, "fis":Ljava/io/FileInputStream;
    const/16 v1, 0x400

    .line 2461
    .local v1, "buf_size":I
    new-array v2, v1, [B

    .line 2462
    .local v2, "buffer":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2464
    :try_start_1e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2465
    const/4 v3, 0x0

    .line 2466
    .local v3, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2467
    .local v4, "nowELAPSED":J
    :goto_29
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4e

    .line 2468
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2469
    .local v6, "content":Ljava/lang/String;
    const-string v7, "OPSA"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4d

    .line 2472
    const-string v7, "**** Exceed read timeout, force exit ***"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_4c} :catch_73
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4c} :catch_58
    .catchall {:try_start_1e .. :try_end_4c} :catchall_56

    .line 2473
    goto :goto_4e

    .line 2475
    .end local v6    # "content":Ljava/lang/String;
    :cond_4d
    goto :goto_29

    .line 2482
    .end local v3    # "length":I
    .end local v4    # "nowELAPSED":J
    :cond_4e
    :goto_4e
    nop

    .line 2483
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_55

    .line 2484
    :catch_53
    move-exception v3

    .line 2486
    goto :goto_8e

    .line 2485
    :cond_55
    :goto_55
    goto :goto_8e

    .line 2481
    :catchall_56
    move-exception v3

    goto :goto_8f

    .line 2478
    :catch_58
    move-exception v3

    .line 2479
    .local v3, "e":Ljava/io/IOException;
    :try_start_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_56

    .line 2482
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_55

    .line 2483
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_53

    goto :goto_55

    .line 2476
    :catch_73
    move-exception v3

    .line 2477
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** File not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_56

    .line 2482
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_55

    .line 2483
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_53

    goto :goto_55

    .line 2487
    :goto_8e
    return-void

    .line 2481
    :goto_8f
    nop

    .line 2482
    if-eqz v0, :cond_98

    .line 2483
    :try_start_92
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_98

    .line 2484
    :catch_96
    move-exception v4

    nop

    .line 2485
    :cond_98
    :goto_98
    throw v3
.end method

.method private dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)V"
        }
    .end annotation

    .line 2740
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    if-eqz p2, :cond_2e

    .line 2741
    const/4 v0, 0x0

    .line 2741
    .local v0, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 2742
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2745
    .end local v0    # "i":I
    :cond_2e
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_36
    return-void
.end method

.method private dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)V"
        }
    .end annotation

    .line 2731
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    if-eqz p2, :cond_2e

    .line 2732
    const/4 v0, 0x0

    .line 2732
    .local v0, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 2733
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2736
    .end local v0    # "i":I
    :cond_2e
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_36
    return-void
.end method

.method private dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2766
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_49

    .line 2767
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2768
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2769
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    goto :goto_a

    .line 2771
    :cond_49
    return-void
.end method

.method private dumpSignal(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 4069
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_40

    .line 4070
    const/4 v0, 0x0

    .line 4070
    .local v0, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 4071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4070
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4074
    .end local v0    # "i":I
    :cond_40
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4076
    :cond_46
    return-void
.end method

.method private dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1945
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p2, :cond_46

    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1948
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    sget-object v1, Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;->INSTANCE:Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;

    .line 1950
    .local v1, "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1952
    nop

    .line 1953
    const/4 v2, 0x0

    .line 1954
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 1955
    if-eqz p3, :cond_21

    if-eqz p3, :cond_46

    const/16 v4, 0xa

    if-ge v2, v4, :cond_46

    .line 1956
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    .line 1954
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1963
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    .end local v1    # "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_46
    return-void
.end method

.method private dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 4155
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_37

    .line 4156
    const/4 v0, 0x0

    .line 4157
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 4158
    if-eqz p3, :cond_12

    if-eqz p3, :cond_37

    const/16 v2, 0xa

    if-ge v0, v2, :cond_37

    .line 4159
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4162
    add-int/lit8 v0, v0, 0x1

    .line 4157
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4165
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

.method private dumpWakeLockRanking(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4086
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;>;"
    if-eqz p1, :cond_35

    .line 4087
    const/4 v0, 0x0

    .line 4088
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 4089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4090
    add-int/lit8 v0, v0, 0x1

    .line 4091
    const/16 v2, 0xa

    if-le v0, v2, :cond_32

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_35

    .line 4088
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4094
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_35
    :goto_35
    return-void
.end method

.method private dumpWakeupReasonRanking(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;)V"
        }
    .end annotation

    .line 4096
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;>;"
    if-eqz p1, :cond_2f

    .line 4097
    const/4 v0, 0x0

    .line 4098
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4100
    add-int/lit8 v0, v0, 0x1

    .line 4101
    const/16 v2, 0xa

    if-le v0, v2, :cond_2c

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_2f

    .line 4098
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4104
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method private dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2759
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_49

    .line 2760
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2761
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2762
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    goto :goto_a

    .line 2764
    :cond_49
    return-void
.end method

.method private dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "limit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2749
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;>;"
    if-eqz p2, :cond_34

    .line 2750
    const/4 v0, 0x0

    .line 2750
    .local v0, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 2751
    if-eqz p3, :cond_f

    const/4 v1, 0x3

    if-lt v0, v1, :cond_f

    .line 2751
    .end local v0    # "i":I
    goto :goto_3a

    .line 2752
    .restart local v0    # "i":I
    :cond_f
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2755
    .end local v0    # "i":I
    :cond_34
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2757
    :cond_3a
    :goto_3a
    return-void
.end method

.method private dumpkwl(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4051
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_37

    .line 4052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 4053
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    const-string v2, "PowerManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 4054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4052
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4057
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method private genBatteryOutlierIfAppropriate(Z)V
    .registers 6
    .param p1, "needGenBatteryOutlier"    # Z

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1835
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 1838
    const-string v0, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_3b

    .line 1841
    :cond_33
    const-string v0, "[opbugreportlite] NOT report it, check if need cleanup qxdm logs immediately."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->sendCleanUpQXDMIfAppropriate()V

    .line 1845
    :goto_3b
    return-void
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4449
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_95

    .line 4450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4452
    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v3, -0x1

    if-eqz v2, :cond_2a

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |sPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4453
    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |wLTMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 4457
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_5e

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    nop

    :cond_5e
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |pkgWHD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |TPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 4460
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 4461
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4464
    :cond_95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4437
    .local p1, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4439
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2b

    .line 4440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 4441
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toMDMString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4442
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_28

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4445
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4418
    .local p2, "rpmlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    .local p3, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4420
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-eqz p2, :cond_26

    .line 4421
    move v2, v1

    .local v2, "i":I
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 4422
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4423
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_23

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4421
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4427
    .end local v2    # "i":I
    :cond_26
    if-eqz p3, :cond_4b

    .line 4428
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    nop

    .local v1, "i":I
    :goto_2e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 4430
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4431
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_48

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 4434
    .end local v1    # "i":I
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4404
    .local p1, "rpmlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    .local p2, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4405
    .local v0, "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 4406
    move v2, v1

    .local v2, "i":I
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 4407
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4406
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4410
    .end local v2    # "i":I
    :cond_1f
    if-eqz p2, :cond_38

    .line 4411
    nop

    .local v1, "i":I
    :goto_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 4412
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4411
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4415
    .end local v1    # "i":I
    :cond_38
    return-object v0
.end method

.method private genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1076
    .local p1, "telelist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2b

    .line 1079
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1080
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_28

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1084
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;"
        }
    .end annotation

    .line 3783
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    const/4 v0, 0x0

    .line 3784
    .local v0, "target":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    if-eqz p1, :cond_4f

    .line 3785
    const/4 v1, 0x0

    .line 3786
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 3787
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 3788
    if-nez v0, :cond_24

    .line 3789
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    .line 3791
    :cond_24
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4f

    .line 3792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " st-KWL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3793
    add-int/lit8 v1, v1, 0x1

    .line 3786
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3800
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4f
    return-object v0
.end method

.method private get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;"
        }
    .end annotation

    .line 3806
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;>;"
    const/4 v0, 0x0

    .line 3807
    .local v0, "target":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    const/4 v1, 0x0

    .line 3808
    .local v1, "rat_target":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    if-eqz p1, :cond_4c

    .line 3810
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$6;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$6;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3815
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_20

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 3816
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    .line 3823
    :cond_20
    nop

    .local v3, "i":I
    :goto_21
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 3824
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v3, v4, :cond_46

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    if-lez v3, :cond_46

    .line 3826
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    .line 3827
    goto :goto_49

    .line 3823
    :cond_46
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_21

    .line 3830
    .end local v3    # "i":I
    :cond_49
    :goto_49
    if-eqz v1, :cond_4c

    .line 3831
    move-object v0, v1

    .line 3834
    :cond_4c
    return-object v0
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 4660
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4662
    .local v0, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4663
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 4664
    .local v2, "numSippers":I
    const/4 v3, 0x0

    move v4, v3

    .line 4664
    .local v4, "i":I
    :goto_10
    if-ge v4, v2, :cond_bb

    .line 4665
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 4667
    .local v5, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v5, :cond_b4

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_b4

    .line 4669
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 4673
    .local v6, "realUid":I
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 4674
    nop

    .line 4675
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    .line 4674
    invoke-static {v3, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 4679
    :cond_3b
    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_4e

    const-string/jumbo v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4680
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 4684
    const/16 v6, 0x3e8

    .line 4687
    :cond_4e
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_6e

    .line 4689
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;

    invoke-direct {v9, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 4691
    .local v7, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 4692
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4693
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 4694
    move-object v5, v7

    .line 4697
    .end local v7    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_6e
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 4698
    .local v7, "index":I
    if-gez v7, :cond_78

    .line 4700
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b3

    .line 4703
    :cond_78
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 4704
    .local v8, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 4705
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v9, :cond_8d

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v9, :cond_8d

    .line 4707
    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4710
    :cond_8d
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_95

    .line 4711
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_96

    :cond_95
    move v9, v3

    .line 4712
    .local v9, "existingPackageLen":I
    :goto_96
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_9e

    .line 4713
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    goto :goto_9f

    :cond_9e
    move v10, v3

    .line 4714
    .local v10, "newPackageLen":I
    :goto_9f
    if-lez v10, :cond_b3

    .line 4715
    add-int v11, v9, v10

    new-array v11, v11, [Ljava/lang/String;

    .line 4716
    .local v11, "newPackages":[Ljava/lang/String;
    if-lez v9, :cond_ac

    .line 4717
    iget-object v12, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4720
    :cond_ac
    iget-object v12, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4722
    iput-object v11, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 4725
    .end local v6    # "realUid":I
    .end local v7    # "index":I
    .end local v8    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "existingPackageLen":I
    .end local v10    # "newPackageLen":I
    .end local v11    # "newPackages":[Ljava/lang/String;
    :cond_b3
    :goto_b3
    goto :goto_b7

    .line 4726
    :cond_b4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4664
    .end local v5    # "sipper":Lcom/android/internal/os/BatterySipper;
    :goto_b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 4730
    .end local v4    # "i":I
    :cond_bb
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 4731
    .local v4, "numUidSippers":I
    nop

    .line 4731
    .local v3, "i":I
    :goto_c0
    if-ge v3, v4, :cond_ce

    .line 4732
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4731
    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    .line 4736
    .end local v3    # "i":I
    :cond_ce
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$12;

    invoke-direct {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$12;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4742
    return-object v1
.end method

.method private getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J
    .registers 7
    .param p1, "activeRPM"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3665
    const-wide/16 v0, 0x0

    .line 3666
    .local v0, "acctime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 3669
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_1a

    goto :goto_3e

    .line 3671
    :cond_1a
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-eq v3, p1, :cond_3e

    .line 3672
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_3e

    .line 3673
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v0, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3666
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3677
    .end local v2    # "i":I
    :cond_41
    return-wide v0
.end method

.method private getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .registers 5
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 4468
    const-string v0, ""

    .line 4469
    .local v0, "pkgInfo":Ljava/lang/String;
    if-eqz p1, :cond_28

    .line 4470
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_19

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, -0x1

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 4471
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 4472
    move-object v0, v1

    goto :goto_28

    .line 4473
    :cond_22
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 4474
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4477
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_28
    :goto_28
    return-object v0
.end method

.method private iSQXDMLogReady()Z
    .registers 4

    .line 1323
    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1324
    .local v0, "copyDone":I
    if-nez v0, :cond_10

    .line 1325
    const-string v2, "QXDM log is ready"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1326
    return v1

    .line 1328
    :cond_10
    const-string v1, "QXDM log is NOT ready"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1329
    const/4 v1, 0x0

    return v1
.end method

.method private ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .registers 9
    .param p1, "bs1"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs2"    # Lcom/android/internal/os/BatterySipper;

    .line 4556
    const/4 v0, 0x1

    .line 4557
    .local v0, "isMatched":Z
    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_e

    :cond_d
    move v1, v2

    .line 4558
    .local v1, "uid1":I
    :goto_e
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_19

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    nop

    .line 4559
    .local v2, "uid2":I
    :cond_19
    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_21

    .line 4560
    return v5

    .line 4561
    :cond_21
    if-eq v1, v2, :cond_24

    .line 4562
    return v5

    .line 4563
    :cond_24
    return v0
.end method

.method private initRPMRexMap()V
    .registers 10

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    .line 830
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_8d

    .line 833
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ea

    .line 843
    :cond_8d
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :goto_ea
    return-void
.end method

.method private static isSharedGid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 4647
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isSystemUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 4651
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private judgeRPM()Ljava/lang/String;
    .registers 19

    .line 3683
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3689
    .local v1, "detailCause":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_287

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_287

    .line 3695
    :cond_1a
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMCanDeepSleep(Ljava/util/List;)Z

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_16d

    .line 3697
    const-wide v10, 0x7fffffffffffffffL

    .line 3698
    .local v10, "smallest_acctime":J
    const-wide/16 v12, 0x0

    .line 3699
    .local v12, "longest_acctime":J
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3700
    .local v2, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    const/4 v14, 0x0

    .line 3701
    .local v14, "percent":F
    move-object v15, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v15, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    :goto_34
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7c

    .line 3703
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v12, v3

    if-gez v3, :cond_55

    .line 3704
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3707
    .end local v12    # "longest_acctime":J
    .local v3, "longest_acctime":J
    move-wide v12, v3

    .end local v3    # "longest_acctime":J
    .restart local v12    # "longest_acctime":J
    :cond_55
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v10, v3

    if-ltz v3, :cond_79

    .line 3708
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3709
    .end local v10    # "smallest_acctime":J
    .local v3, "smallest_acctime":J
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v9, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3701
    .end local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .local v9, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    move-wide v10, v3

    move-object v15, v9

    .end local v3    # "smallest_acctime":J
    .end local v9    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .restart local v10    # "smallest_acctime":J
    .restart local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 3712
    .end local v2    # "i":I
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[judgeRPM] longest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3714
    cmp-long v2, v12, v7

    if-eqz v2, :cond_d5

    .line 3715
    sub-long v2, v12, v10

    long-to-float v2, v2

    mul-float/2addr v2, v6

    long-to-float v3, v12

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    .line 3716
    .end local v14    # "percent":F
    .local v2, "percent":F
    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3717
    .local v3, "b":Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    .line 3718
    .end local v2    # "percent":F
    .restart local v14    # "percent":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] percent[(longest-smallest)/longest] ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3719
    .end local v3    # "b":Ljava/math/BigDecimal;
    goto :goto_da

    .line 3720
    :cond_d5
    const-string v2, "[judgeRPM] longest_acctime == 0"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3723
    :goto_da
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_fa

    .line 3725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3726
    return-object v1

    .line 3729
    :cond_fa
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_fc
    move/from16 v2, v16

    .end local v16    # "i":I
    .local v2, "i":I
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16b

    .line 3731
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_168

    .line 3732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] SLPI\'s SleepCount_Diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", criteria="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3733
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    sget-wide v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_168

    .line 3735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3736
    return-object v1

    .line 3729
    :cond_168
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "i":I
    .restart local v16    # "i":I
    goto :goto_fc

    .line 3741
    .end local v10    # "smallest_acctime":J
    .end local v12    # "longest_acctime":J
    .end local v14    # "percent":F
    .end local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .end local v16    # "i":I
    :cond_16b
    goto/16 :goto_286

    .line 3745
    :cond_16d
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_173
    if-ge v4, v3, :cond_26b

    aget-object v9, v2, v4

    .line 3748
    .local v9, "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    if-ne v9, v10, :cond_17e

    .line 3745
    .end local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    :cond_17b
    const/4 v14, 0x4

    goto/16 :goto_263

    .line 3750
    .restart local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    :cond_17e
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17f
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_17b

    .line 3752
    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25a

    .line 3755
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    if-ne v11, v12, :cond_25a

    .line 3757
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-direct {v0, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J

    move-result-wide v11

    .line 3758
    .local v11, "longestRPMSAD":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", longestRPMSAD="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3759
    cmp-long v13, v11, v7

    if-eqz v13, :cond_253

    .line 3760
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v13, v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    sub-long v13, v11, v13

    long-to-float v13, v13

    mul-float/2addr v13, v6

    long-to-float v14, v11

    div-float/2addr v13, v14

    mul-float/2addr v13, v5

    .line 3761
    .local v13, "percent":F
    new-instance v14, Ljava/math/BigDecimal;

    float-to-double v5, v13

    invoke-direct {v14, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v5, v14

    .line 3762
    .local v5, "b":Ljava/math/BigDecimal;
    const/4 v6, 0x3

    const/4 v14, 0x4

    invoke-virtual {v5, v6, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 3763
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[judgeRPM] percent[(longest-"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\'s SAD)/longest] ="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3764
    sget v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v6, v13, v6

    if-ltz v6, :cond_252

    .line 3766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3767
    return-object v1

    .line 3769
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v13    # "percent":F
    :cond_252
    goto :goto_25b

    .line 3770
    :cond_253
    const/4 v14, 0x4

    const-string v5, "[judgeRPM] longestRPMSAD == 0"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .end local v11    # "longestRPMSAD":J
    goto :goto_25b

    .line 3750
    :cond_25a
    const/4 v14, 0x4

    :goto_25b
    add-int/lit8 v10, v10, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_17f

    .line 3745
    .end local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .end local v10    # "i":I
    :goto_263
    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_173

    .line 3777
    :cond_26b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3779
    :goto_286
    return-object v1

    .line 3690
    :cond_287
    :goto_287
    const-string v2, "[judgeRPM] oops, rpm data is not well retrieved, just return UNKNOWN"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3691
    return-object v1
.end method

.method private judgeRootCause()Z
    .registers 60

    .line 2927
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2930
    .local v1, "daignosisAsAbn":Z
    const/4 v2, 0x0

    .line 2933
    .local v2, "skipAudioMDMReporting":Z
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gtz v3, :cond_3d

    .line 2934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Due to mStandby_Ms: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is less than 0, can\'t judge anything, need just return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2936
    return v4

    .line 2938
    :cond_3d
    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_7f

    .line 2939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Due to mStandby_Ms: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is less than "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, it\'s false alarm, just return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2941
    return v4

    .line 2943
    :cond_7f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2946
    .local v5, "startTime":J
    iput-boolean v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 2949
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2952
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 2956
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v7, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v3, v7}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    .line 2959
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v7, "/data/system/power/diagnosis_rpm.txt"

    invoke-virtual {v3, v7}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    .line 2961
    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, "mDMPackage":Ljava/lang/String;
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2964
    .local v7, "mDMDetail":Ljava/lang/String;
    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 2965
    .local v8, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2967
    .local v9, "batteryOutlierReason":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2968
    .local v10, "sb":Ljava/lang/StringBuilder;
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-static {v10, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2969
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Time of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2972
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Battery-Drop of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2973
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### EverEnterDeepIdle : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2978
    new-instance v11, Ljava/math/BigDecimal;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    float-to-double v12, v12

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2979
    .local v11, "b":Ljava/math/BigDecimal;
    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    iput v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    .line 2980
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Average Current of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA, criteria="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2981
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    sub-float/2addr v12, v14

    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    cmpg-float v12, v12, v14

    if-gtz v12, :cond_18b

    .line 2995
    const-string v12, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2996
    sget v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 2997
    .local v12, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 2998
    .local v14, "local_USERSPACE_WL_CRITERIA":F
    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 2999
    .local v15, "local_KERNELSPACE_WL_CRITERIA":F
    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 3000
    .local v17, "local_SIGNAL_BAD_CRITERIA":F
    sget v18, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 3000
    .local v18, "local_UNACCOUNTED_CRITERIA":F
    goto :goto_19a

    .line 3002
    .end local v12    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .end local v14    # "local_USERSPACE_WL_CRITERIA":F
    .end local v15    # "local_KERNELSPACE_WL_CRITERIA":F
    .end local v17    # "local_SIGNAL_BAD_CRITERIA":F
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    :cond_18b
    const-string v12, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3003
    sget v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 3004
    .restart local v12    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 3005
    .restart local v14    # "local_USERSPACE_WL_CRITERIA":F
    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 3006
    .restart local v15    # "local_KERNELSPACE_WL_CRITERIA":F
    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 3007
    .restart local v17    # "local_SIGNAL_BAD_CRITERIA":F
    sget v18, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 3007
    .restart local v18    # "local_UNACCOUNTED_CRITERIA":F
    :goto_19a
    move/from16 v19, v18

    .line 3010
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .local v19, "local_UNACCOUNTED_CRITERIA":F
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3011
    move/from16 v20, v14

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    .line 3011
    .end local v14    # "local_USERSPACE_WL_CRITERIA":F
    .local v20, "local_USERSPACE_WL_CRITERIA":F
    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3012
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### CPU Uptime of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3016
    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3017
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3021
    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3022
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3025
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " times"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3026
    sget-boolean v13, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/4 v14, 0x1

    if-eqz v13, :cond_219

    const-string v13, "Diff"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-direct {v0, v13, v4, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3029
    :cond_219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3029
    .end local v15    # "local_KERNELSPACE_WL_CRITERIA":F
    .local v21, "local_KERNELSPACE_WL_CRITERIA":F
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " times"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3031
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpkwl(Ljava/util/List;)V

    .line 3034
    const-string v4, "Diff-RPM"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3041
    const-string v4, "Diff-RPMMaster"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3050
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 3054
    .local v4, "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    .line 3054
    .end local v1    # "daignosisAsAbn":Z
    .local v22, "daignosisAsAbn":Z
    invoke-virtual {v13, v14, v15, v1, v4}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    .line 3065
    const-string v1, "Diff-RPM"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 3069
    .local v1, "rpm_all":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 3070
    .local v13, "mdm_rpm_master_detail":Ljava/lang/String;
    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    const-string v2, "###### RPM MDM_Detail : "

    .line 3070
    .end local v2    # "skipAudioMDMReporting":Z
    .local v23, "skipAudioMDMReporting":Z
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    const-string v2, "Diff-WiFiWakeUp"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3080
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3081
    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3085
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 3086
    .local v2, "teleInfo":Ljava/lang/String;
    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    const-string v3, "###### Diff-TeleChgInfo : "

    .line 3086
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .local v24, "mDMPackage":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    move-result-object v3

    .line 3091
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "##### 1st-TelephonyAnomaly : "

    .line 3091
    .end local v2    # "teleInfo":Ljava/lang/String;
    .local v25, "teleInfo":Ljava/lang/String;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_2f4

    const-string v2, "Diff - totalPowerMah"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3099
    :cond_2f4
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v2, :cond_30e

    .line 3100
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v14, Lcom/android/server/OnePlusStandbyAnalyzer$5;

    invoke-direct {v14, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$5;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3105
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_30e

    const-string v2, "Diff - wakeLockTimeMs"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3108
    :cond_30e
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v15, "2.02"

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v2, v14

    const v14, 0x4a5bba00    # 3600000.0f

    div-float/2addr v2, v14

    .line 3112
    .local v2, "standby_hrs":F
    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    float-to-double v7, v2

    .line 3112
    .end local v7    # "mDMDetail":Ljava/lang/String;
    .end local v8    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v26, "mDMDetail":Ljava/lang/String;
    .local v27, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    invoke-direct {v14, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v14

    .line 3113
    .end local v11    # "b":Ljava/math/BigDecimal;
    .local v7, "b":Ljava/math/BigDecimal;
    const/4 v8, 0x3

    const/4 v11, 0x4

    invoke-virtual {v7, v8, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 3114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### standby_hrs : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " h"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3115
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    long-to-float v8, v14

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v8, v11

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v14, v14

    div-float/2addr v8, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v8, v14

    .line 3118
    .local v8, "userSpaceWL_Percentage":F
    new-instance v15, Ljava/math/BigDecimal;

    move/from16 v28, v12

    float-to-double v11, v8

    .line 3118
    .end local v12    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .local v28, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    invoke-direct {v15, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v15

    .line 3119
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    .line 3120
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### userSpaceWL_Percentage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3121
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    long-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v12, v14

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    .line 3124
    .local v11, "cpuRuning_Percentage":F
    new-instance v12, Ljava/math/BigDecimal;

    float-to-double v14, v11

    invoke-direct {v12, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v12

    .line 3125
    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-virtual {v7, v12, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    .line 3126
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### cpuRuning_Percentage : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " %"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3127
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    sub-float v12, v11, v8

    .line 3130
    .local v12, "kernelSpaceWL_Percentage":F
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### kernelSpaceWL_Percentage : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " %"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3131
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v30, v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 3131
    .end local v4    # "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    move/from16 v4, v28

    int-to-float v14, v4

    .line 3133
    .end local v28    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .local v4, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    mul-float/2addr v14, v2

    .line 3134
    .local v14, "local_wrCountCriteria":F
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v2

    const-string v2, "###### local_wrCountCriteria : "

    .line 3134
    .end local v2    # "standby_hrs":F
    .local v31, "standby_hrs":F
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3136
    move-object/from16 v32, v10

    move/from16 v33, v11

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3136
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "cpuRuning_Percentage":F
    .local v32, "sb":Ljava/lang/StringBuilder;
    .local v33, "cpuRuning_Percentage":F
    long-to-float v2, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v10

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v10, v10

    div-float/2addr v2, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    .line 3137
    .local v2, "signalBad_Percentage":F
    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v36, v4

    move-wide/from16 v34, v5

    float-to-double v4, v2

    .line 3137
    .end local v4    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .end local v5    # "startTime":J
    .local v34, "startTime":J
    .local v36, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    invoke-direct {v10, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v4, v10

    .line 3138
    .end local v7    # "b":Ljava/math/BigDecimal;
    .local v4, "b":Ljava/math/BigDecimal;
    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 3139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### signalBad_Percentage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3140
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v5

    .line 3143
    .local v5, "rpmDetailJudge":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### [judgeRPM] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3144
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 3149
    .local v6, "unAccounted_Percentage":D
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v10, :cond_4f5

    .line 3150
    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    const-wide/16 v28, 0x0

    cmpl-double v10, v10, v28

    if-eqz v10, :cond_4ed

    .line 3151
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v37, v6

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 3151
    .end local v6    # "unAccounted_Percentage":D
    .local v37, "unAccounted_Percentage":D
    div-double/2addr v10, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v6

    .line 3152
    .end local v37    # "unAccounted_Percentage":D
    .local v10, "unAccounted_Percentage":D
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v4, v6

    .line 3153
    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 3154
    .end local v10    # "unAccounted_Percentage":D
    .restart local v6    # "unAccounted_Percentage":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3155
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4ef

    .line 3157
    :cond_4ed
    move-wide/from16 v37, v6

    :goto_4ef
    const-string v10, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_507

    .line 3159
    :cond_4f5
    move-wide/from16 v37, v6

    .line 3159
    .end local v6    # "unAccounted_Percentage":D
    .restart local v37    # "unAccounted_Percentage":D
    const-string v6, "###### No-unaccounted sipper existed."

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3160
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v10, "-999"

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    move-wide/from16 v6, v37

    .line 3163
    .end local v37    # "unAccounted_Percentage":D
    .restart local v6    # "unAccounted_Percentage":D
    :goto_507
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpCriteria()V

    .line 3166
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v15, "1"

    invoke-interface {v10, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->pkgConvertion()V

    .line 3179
    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-eqz v10, :cond_581

    .line 3185
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_c0e

    goto :goto_56d

    .line 3222
    :pswitch_528
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3224
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v10, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3225
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v11, "mDMPackage":Ljava/lang/String;
    move-object v15, v11

    .line 3225
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v15, "mDMDetail":Ljava/lang/String;
    :goto_531
    goto :goto_573

    .line 3187
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMPackage":Ljava/lang/String;
    .end local v15    # "mDMDetail":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_532
    if-eqz v3, :cond_56d

    .line 3188
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v11, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_c16

    .line 3202
    move-object/from16 v10, v27

    goto :goto_550

    .line 3199
    :pswitch_544
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3199
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_550

    .line 3196
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_547
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3197
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_550

    .line 3193
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_54a
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3194
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_550

    .line 3190
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_54d
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3191
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    nop

    .line 3202
    :goto_550
    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    iget-object v11, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    iget-boolean v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    invoke-static {v11, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v11

    .line 3218
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v11    # "mDMPackage":Ljava/lang/String;
    move-object v15, v11

    goto :goto_531

    .line 3226
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_56d
    :goto_56d
    move-object/from16 v11, v24

    move-object/from16 v15, v26

    move-object/from16 v10, v27

    .line 3577
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v11    # "mDMPackage":Ljava/lang/String;
    .restart local v15    # "mDMDetail":Ljava/lang/String;
    :goto_573
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move-object/from16 v39, v4

    move-object v4, v11

    move-object v11, v15

    .line 3577
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v15    # "mDMDetail":Ljava/lang/String;
    .end local v19    # "local_UNACCOUNTED_CRITERIA":F
    .local v4, "mDMPackage":Ljava/lang/String;
    .local v11, "mDMDetail":Ljava/lang/String;
    .local v39, "b":Ljava/math/BigDecimal;
    .local v42, "rpm_all":Ljava/lang/String;
    .local v43, "signalBad_Percentage":F
    .local v46, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .local v47, "local_UNACCOUNTED_CRITERIA":F
    :goto_57d
    move/from16 v47, v19

    goto/16 :goto_b44

    .line 3229
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v39    # "b":Ljava/math/BigDecimal;
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .local v4, "b":Ljava/math/BigDecimal;
    .restart local v19    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_581
    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    if-nez v10, :cond_5b2

    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    if-nez v10, :cond_5b2

    .line 3230
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3231
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3232
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v39, v4

    const-string v4, "0"

    .line 3232
    .end local v4    # "b":Ljava/math/BigDecimal;
    .restart local v39    # "b":Ljava/math/BigDecimal;
    invoke-interface {v11, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3235
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v4, "mDMPackage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3577
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v19    # "local_UNACCOUNTED_CRITERIA":F
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v11    # "mDMDetail":Ljava/lang/String;
    .restart local v42    # "rpm_all":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    :goto_5ab
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    goto :goto_57d

    .line 3238
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v39    # "b":Ljava/math/BigDecimal;
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .local v4, "b":Ljava/math/BigDecimal;
    .restart local v19    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_5b2
    move-object/from16 v39, v4

    .line 3238
    .end local v4    # "b":Ljava/math/BigDecimal;
    .restart local v39    # "b":Ljava/math/BigDecimal;
    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    long-to-float v4, v10

    cmpl-float v4, v4, v14

    if-ltz v4, :cond_6ad

    .line 3239
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3240
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v4, :cond_69b

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_69b

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_69b

    .line 3243
    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3250
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->fromString(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    move-result-object v4

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    if-ne v4, v11, :cond_60c

    .line 3251
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3251
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v4, "mDMPackage":Ljava/lang/String;
    :goto_60b
    goto :goto_613

    .line 3253
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    :cond_60c
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_WR:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_60b

    .line 3256
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v4    # "mDMPackage":Ljava/lang/String;
    :goto_613
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 3259
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v11    # "mDMDetail":Ljava/lang/String;
    const/4 v15, 0x3

    .line 3260
    .local v15, "max":I
    move-object/from16 v40, v4

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 3260
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .local v40, "mDMPackage":Ljava/lang/String;
    if-eqz v4, :cond_653

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_653

    .line 3261
    const/4 v4, 0x0

    .line 3261
    .local v4, "i":I
    :goto_62e
    move-object/from16 v41, v10

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 3261
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v41, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_655

    .line 3262
    if-ge v4, v15, :cond_64e

    .line 3263
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    :cond_64e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v41

    goto :goto_62e

    .line 3270
    .end local v4    # "i":I
    .end local v41    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_653
    move-object/from16 v41, v10

    .line 3270
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v41    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_655
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v4, :cond_67f

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_67f

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_680

    .line 3271
    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3275
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_680

    .line 3277
    :cond_67f
    const/4 v10, 0x0

    :cond_680
    :goto_680
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3278
    .end local v15    # "max":I
    nop

    .line 3577
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move/from16 v47, v19

    move-object/from16 v4, v40

    goto :goto_6a9

    .line 3577
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v40    # "mDMPackage":Ljava/lang/String;
    .end local v41    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    :cond_69b
    move-object/from16 v41, v10

    .line 3577
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v41    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move/from16 v47, v19

    move-object/from16 v4, v24

    move-object/from16 v11, v26

    .line 3577
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v19    # "local_UNACCOUNTED_CRITERIA":F
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .end local v41    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v4, "mDMPackage":Ljava/lang/String;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v11    # "mDMDetail":Ljava/lang/String;
    .restart local v42    # "rpm_all":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    :goto_6a9
    move-object/from16 v10, v41

    goto/16 :goto_b44

    .line 3280
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v19    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_6ad
    cmpl-float v4, v8, v20

    if-gez v4, :cond_8f5

    cmpl-float v4, v12, v21

    if-ltz v4, :cond_6bd

    .line 3283
    move-object/from16 v42, v1

    move/from16 v43, v2

    move/from16 v4, v19

    goto/16 :goto_8fb

    .line 3424
    :cond_6bd
    cmpl-float v4, v2, v17

    if-ltz v4, :cond_6f3

    .line 3425
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3426
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3427
    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3430
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3431
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v4    # "mDMPackage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5ab

    .line 3433
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_6f3
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_79d

    .line 3436
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3437
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### [judgeRPM] :"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3442
    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# [judgeRPM]=["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] #"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3451
    iget-boolean v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v4, :cond_747

    .line 3452
    const-string v4, "aosd_no_increase"

    .line 3452
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v4    # "mDMPackage":Ljava/lang/String;
    :goto_746
    goto :goto_74b

    .line 3454
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    :cond_747
    const-string/jumbo v4, "vmin_no_increase"

    goto :goto_746

    .line 3457
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v4    # "mDMPackage":Ljava/lang/String;
    :goto_74b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [RPM] :"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3459
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_787

    .line 3462
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5ab

    .line 3465
    :cond_787
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5ab

    .line 3469
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_79d
    move/from16 v4, v19

    float-to-double v10, v4

    .line 3469
    .end local v19    # "local_UNACCOUNTED_CRITERIA":F
    .local v4, "local_UNACCOUNTED_CRITERIA":F
    cmpl-double v10, v6, v10

    if-lez v10, :cond_893

    .line 3470
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3471
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unaccounted:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " %"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [judgeRPM] :"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3480
    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# [judgeRPM]=["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    const-string/jumbo v11, "high_unaccounted"

    .line 3489
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v11, "mDMPackage":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3490
    .local v15, "tele_abn_str_detail":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3492
    .local v16, "tele_abn_str_mdm":Ljava/lang/String;
    if-eqz v3, :cond_874

    move-object/from16 v42, v1

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    .line 3492
    .end local v1    # "rpm_all":Ljava/lang/String;
    .restart local v42    # "rpm_all":Ljava/lang/String;
    if-lez v1, :cond_871

    .line 3494
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    .line 3495
    .end local v15    # "tele_abn_str_detail":Ljava/lang/String;
    .local v1, "tele_abn_str_detail":Ljava/lang/String;
    iget-object v15, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move/from16 v43, v2

    const/4 v2, 0x0

    invoke-static {v15, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v2

    .line 3498
    .end local v16    # "tele_abn_str_mdm":Ljava/lang/String;
    .local v2, "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    const-string v15, ";"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v44, v1

    const-string v1, "_"

    .line 3502
    .end local v1    # "tele_abn_str_detail":Ljava/lang/String;
    .local v44, "tele_abn_str_detail":Ljava/lang/String;
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3514
    .end local v11    # "mDMPackage":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_85c

    .line 3517
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v2    # "tele_abn_str_mdm":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .end local v44    # "tele_abn_str_detail":Ljava/lang/String;
    .local v11, "mDMDetail":Ljava/lang/String;
    :goto_85b
    goto :goto_892

    .line 3520
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .restart local v2    # "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v44    # "tele_abn_str_detail":Ljava/lang/String;
    :cond_85c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_85b

    .line 3525
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .end local v44    # "tele_abn_str_detail":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .local v11, "mDMPackage":Ljava/lang/String;
    .restart local v15    # "tele_abn_str_detail":Ljava/lang/String;
    .restart local v16    # "tele_abn_str_mdm":Ljava/lang/String;
    :cond_871
    move/from16 v43, v2

    .line 3525
    .end local v2    # "signalBad_Percentage":F
    .restart local v43    # "signalBad_Percentage":F
    goto :goto_878

    .line 3525
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .local v1, "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    :cond_874
    move-object/from16 v42, v1

    move/from16 v43, v2

    .line 3525
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .restart local v42    # "rpm_all":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    :goto_878
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_890

    .line 3528
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3535
    .end local v15    # "tele_abn_str_detail":Ljava/lang/String;
    .end local v16    # "tele_abn_str_mdm":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    .local v11, "mDMDetail":Ljava/lang/String;
    :goto_88a
    move-object/from16 v58, v11

    move-object v11, v1

    move-object/from16 v1, v58

    goto :goto_892

    .line 3531
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .local v11, "mDMPackage":Ljava/lang/String;
    .restart local v15    # "tele_abn_str_detail":Ljava/lang/String;
    .restart local v16    # "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    :cond_890
    move-object v1, v5

    .line 3531
    .end local v15    # "tele_abn_str_detail":Ljava/lang/String;
    .end local v16    # "tele_abn_str_mdm":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v1, "mDMDetail":Ljava/lang/String;
    goto :goto_88a

    .line 3535
    .local v1, "mDMPackage":Ljava/lang/String;
    .local v11, "mDMDetail":Ljava/lang/String;
    :goto_892
    goto :goto_8ee

    .line 3535
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .local v1, "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_893
    move-object/from16 v42, v1

    move/from16 v43, v2

    .line 3535
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .restart local v42    # "rpm_all":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    if-eqz v3, :cond_8d6

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    if-lez v1, :cond_8d6

    .line 3537
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v2, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c22

    .line 3551
    move-object/from16 v10, v27

    goto :goto_8ba

    .line 3548
    :pswitch_8ad
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3548
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v1, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_8b9

    .line 3545
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_8b0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3546
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_8b9

    .line 3542
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_8b3
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3543
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_8b9

    .line 3539
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_8b6
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3540
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    nop

    .line 3551
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :goto_8b9
    move-object v10, v1

    :goto_8ba
    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3553
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3556
    iget-object v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v1

    .line 3566
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    move-object v2, v1

    goto :goto_8ed

    .line 3569
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_8d6
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3570
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3574
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v1    # "mDMPackage":Ljava/lang/String;
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3577
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v2, "mDMDetail":Ljava/lang/String;
    .local v4, "mDMPackage":Ljava/lang/String;
    .restart local v11    # "mDMDetail":Ljava/lang/String;
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    :goto_8ed
    move-object v11, v2

    .line 3577
    .end local v2    # "mDMDetail":Ljava/lang/String;
    :goto_8ee
    move-object/from16 v46, v3

    move/from16 v47, v4

    move-object v4, v1

    goto/16 :goto_b44

    .line 3283
    .end local v4    # "mDMPackage":Ljava/lang/String;
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v11    # "mDMDetail":Ljava/lang/String;
    .end local v42    # "rpm_all":Ljava/lang/String;
    .end local v43    # "signalBad_Percentage":F
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .local v1, "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v19    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_8f5
    move-object/from16 v42, v1

    move/from16 v43, v2

    move/from16 v4, v19

    .line 3283
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .end local v19    # "local_UNACCOUNTED_CRITERIA":F
    .local v4, "local_UNACCOUNTED_CRITERIA":F
    .restart local v42    # "rpm_all":Ljava/lang/String;
    .restart local v43    # "signalBad_Percentage":F
    :goto_8fb
    cmpl-float v1, v8, v12

    if-lez v1, :cond_a67

    .line 3285
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3286
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3289
    const-string v1, ""

    .line 3290
    .local v1, "sipperInfo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3291
    .local v2, "target":Lcom/android/internal/os/BatterySipper;
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v11, :cond_a52

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a52

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a52

    .line 3292
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    .line 3294
    .local v11, "uidWL":I
    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v15, :cond_9bd

    .line 3295
    move-object v15, v2

    const/4 v2, 0x0

    .line 3295
    .local v2, "i":I
    .local v15, "target":Lcom/android/internal/os/BatterySipper;
    :goto_932
    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 3295
    .end local v1    # "sipperInfo":Ljava/lang/String;
    .local v45, "sipperInfo":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9ad

    .line 3297
    if-nez v2, :cond_947

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 3298
    .end local v15    # "target":Lcom/android/internal/os/BatterySipper;
    .local v1, "target":Lcom/android/internal/os/BatterySipper;
    move-object v15, v1

    .line 3298
    .end local v1    # "target":Lcom/android/internal/os/BatterySipper;
    .restart local v15    # "target":Lcom/android/internal/os/BatterySipper;
    :cond_947
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_962

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_963

    :cond_962
    const/4 v1, -0x1

    .line 3299
    .local v1, "uidSipper":I
    :goto_963
    move-object/from16 v46, v3

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 3299
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move/from16 v47, v4

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3299
    .end local v4    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    if-ne v3, v4, :cond_9a4

    if-ne v1, v11, :cond_9a4

    .line 3300
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 3301
    .end local v15    # "target":Lcom/android/internal/os/BatterySipper;
    .local v3, "target":Lcom/android/internal/os/BatterySipper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Matched Sipper at ["

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v0, v15, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3302
    nop

    .line 3305
    move-object v2, v3

    goto :goto_9b2

    .line 3295
    .end local v1    # "uidSipper":I
    .end local v3    # "target":Lcom/android/internal/os/BatterySipper;
    .restart local v15    # "target":Lcom/android/internal/os/BatterySipper;
    :cond_9a4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    move/from16 v4, v47

    goto :goto_932

    .line 3305
    .end local v2    # "i":I
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "local_UNACCOUNTED_CRITERIA":F
    :cond_9ad
    move-object/from16 v46, v3

    move/from16 v47, v4

    move-object v2, v15

    .line 3305
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "local_UNACCOUNTED_CRITERIA":F
    .end local v15    # "target":Lcom/android/internal/os/BatterySipper;
    .local v2, "target":Lcom/android/internal/os/BatterySipper;
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    :goto_9b2
    if-eqz v2, :cond_9c3

    .line 3306
    const-string v1, ""

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    .line 3319
    .end local v45    # "sipperInfo":Ljava/lang/String;
    .local v1, "sipperInfo":Ljava/lang/String;
    move-object/from16 v45, v1

    goto :goto_9c3

    .line 3319
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "local_UNACCOUNTED_CRITERIA":F
    :cond_9bd
    move-object/from16 v45, v1

    move-object/from16 v46, v3

    move/from16 v47, v4

    .line 3319
    .end local v1    # "sipperInfo":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v45    # "sipperInfo":Ljava/lang/String;
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    :cond_9c3
    :goto_9c3
    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    .line 3322
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1st-WL:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3329
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    .line 3333
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v3, "mDMDetail":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a15

    .line 3334
    const-string v4, "1st-WL is one of Audio skipping lists, skip audio-relative MDM-reporting"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3335
    const/4 v4, 0x1

    .line 3335
    .end local v23    # "skipAudioMDMReporting":Z
    .local v4, "skipAudioMDMReporting":Z
    goto :goto_a17

    .line 3348
    .end local v4    # "skipAudioMDMReporting":Z
    .restart local v23    # "skipAudioMDMReporting":Z
    :cond_a15
    move/from16 v4, v23

    .line 3348
    .end local v23    # "skipAudioMDMReporting":Z
    .restart local v4    # "skipAudioMDMReporting":Z
    :goto_a17
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3349
    .local v15, "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    .line 3349
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .local v48, "mDMPackage":Ljava/lang/String;
    move-object/from16 v49, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3349
    .end local v2    # "target":Lcom/android/internal/os/BatterySipper;
    .local v49, "target":Lcom/android/internal/os/BatterySipper;
    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3351
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v50, v3

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3351
    .end local v3    # "mDMDetail":Ljava/lang/String;
    .local v50, "mDMDetail":Ljava/lang/String;
    move/from16 v51, v4

    iget v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    .line 3351
    .end local v4    # "skipAudioMDMReporting":Z
    .local v51, "skipAudioMDMReporting":Z
    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 3357
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeWLAsNormal()Z

    move-result v1

    if-eqz v1, :cond_a4b

    .line 3358
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 3360
    const/4 v1, 0x0

    .line 3360
    .end local v11    # "uidWL":I
    .end local v15    # "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "daignosisAsAbn":Z
    .end local v45    # "sipperInfo":Ljava/lang/String;
    .end local v49    # "target":Lcom/android/internal/os/BatterySipper;
    .local v1, "daignosisAsAbn":Z
    goto :goto_a4d

    .line 3364
    .end local v1    # "daignosisAsAbn":Z
    .restart local v22    # "daignosisAsAbn":Z
    :cond_a4b
    move/from16 v1, v22

    .line 3364
    .end local v22    # "daignosisAsAbn":Z
    .end local v48    # "mDMPackage":Ljava/lang/String;
    .end local v51    # "skipAudioMDMReporting":Z
    .restart local v1    # "daignosisAsAbn":Z
    .local v2, "skipAudioMDMReporting":Z
    .local v3, "mDMPackage":Ljava/lang/String;
    :goto_a4d
    move-object/from16 v3, v48

    move/from16 v2, v51

    goto :goto_a5e

    .line 3364
    .end local v1    # "daignosisAsAbn":Z
    .end local v2    # "skipAudioMDMReporting":Z
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .end local v50    # "mDMDetail":Ljava/lang/String;
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .local v4, "local_UNACCOUNTED_CRITERIA":F
    .restart local v22    # "daignosisAsAbn":Z
    .restart local v23    # "skipAudioMDMReporting":Z
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    :cond_a52
    move-object/from16 v46, v3

    move/from16 v47, v4

    .line 3364
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v50, v26

    .line 3577
    .end local v22    # "daignosisAsAbn":Z
    .end local v23    # "skipAudioMDMReporting":Z
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v1    # "daignosisAsAbn":Z
    .restart local v2    # "skipAudioMDMReporting":Z
    .local v3, "mDMPackage":Ljava/lang/String;
    .restart local v50    # "mDMDetail":Ljava/lang/String;
    :goto_a5e
    move/from16 v22, v1

    move/from16 v23, v2

    move-object v4, v3

    move-object/from16 v11, v50

    goto/16 :goto_b44

    .line 3366
    .end local v1    # "daignosisAsAbn":Z
    .end local v2    # "skipAudioMDMReporting":Z
    .end local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v47    # "local_UNACCOUNTED_CRITERIA":F
    .end local v50    # "mDMDetail":Ljava/lang/String;
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v22    # "daignosisAsAbn":Z
    .restart local v23    # "skipAudioMDMReporting":Z
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    .restart local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_a67
    move-object/from16 v46, v3

    move/from16 v47, v4

    .line 3366
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v46    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v47    # "local_UNACCOUNTED_CRITERIA":F
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3367
    .end local v27    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v10    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_b40

    .line 3371
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    move-result-object v1

    .line 3372
    .local v1, "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    if-eqz v1, :cond_b3c

    .line 3374
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3381
    const/4 v2, 0x0

    .line 3382
    .local v2, "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    const-string v3, "alarmtimer"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aac

    const-string/jumbo v3, "timerfd"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa5

    goto :goto_aac

    .line 3401
    :cond_aa5
    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_KWL:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3401
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .local v3, "mDMPackage":Ljava/lang/String;
    :goto_aab
    goto :goto_af3

    .line 3386
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    :cond_aac
    :goto_aac
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v3, :cond_af1

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_af1

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_af1

    .line 3388
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    .line 3392
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3393
    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st-pkt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3398
    iget-object v3, v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    goto :goto_aab

    .line 3405
    :cond_af1
    move-object/from16 v3, v24

    .line 3405
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v3    # "mDMPackage":Ljava/lang/String;
    :goto_af3
    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 3410
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v4, "mDMDetail":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3412
    .local v11, "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_b1e

    .line 3413
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v52, v3

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3413
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .local v52, "mDMPackage":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b27

    .line 3415
    .end local v52    # "mDMPackage":Ljava/lang/String;
    .restart local v3    # "mDMPackage":Ljava/lang/String;
    :cond_b1e
    move-object/from16 v52, v3

    .line 3415
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .restart local v52    # "mDMPackage":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3418
    :goto_b27
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    iget-wide v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3418
    .end local v1    # "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .end local v2    # "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    .local v53, "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .local v54, "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v3, v1, v2, v15, v11}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 3420
    .end local v11    # "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v53    # "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .end local v54    # "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    move-object/from16 v26, v4

    move-object/from16 v3, v52

    goto :goto_b3e

    .line 3420
    .end local v4    # "mDMDetail":Ljava/lang/String;
    .end local v52    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v26    # "mDMDetail":Ljava/lang/String;
    :cond_b3c
    move-object/from16 v3, v24

    .line 3577
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .restart local v3    # "mDMPackage":Ljava/lang/String;
    :goto_b3e
    move-object v4, v3

    goto :goto_b42

    .line 3577
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .restart local v24    # "mDMPackage":Ljava/lang/String;
    :cond_b40
    move-object/from16 v4, v24

    .line 3577
    .end local v24    # "mDMPackage":Ljava/lang/String;
    .end local v26    # "mDMDetail":Ljava/lang/String;
    .local v4, "mDMPackage":Ljava/lang/String;
    .local v11, "mDMDetail":Ljava/lang/String;
    :goto_b42
    move-object/from16 v11, v26

    :goto_b44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [RootCause] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3581
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    sget v49, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    move-object/from16 v55, v5

    move-wide/from16 v56, v6

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3581
    .end local v5    # "rpmDetailJudge":Ljava/lang/String;
    .end local v6    # "unAccounted_Percentage":D
    .local v55, "rpmDetailJudge":Ljava/lang/String;
    .local v56, "unAccounted_Percentage":D
    iget v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    iget v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    move-object/from16 v48, v2

    move-wide/from16 v50, v5

    move/from16 v52, v3

    move/from16 v53, v7

    move-object/from16 v54, v1

    invoke-virtual/range {v48 .. v54}, Lcom/android/server/OnePlusDiagnosisUtil;->log(IJIFLjava/lang/String;)V

    .line 3582
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v2}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 3584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [MDM_PACKAGE] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [MDM_DETAIL] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3587
    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    if-eqz v2, :cond_bec

    .line 3589
    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    if-eqz v2, :cond_bbe

    .line 3590
    const-string v2, "This round of abnormal diagnoses as normal, skip MDM-reporting"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_bec

    .line 3595
    :cond_bbe
    if-nez v23, :cond_be7

    .line 3596
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3597
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "tp"

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    const-string/jumbo v3, "pn"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    const-string v3, "dl"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3601
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v5, "standby"

    invoke-virtual {v3, v5, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3602
    .end local v2    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_bec

    .line 3603
    :cond_be7
    const-string v2, "Directly skip audio-relative MDM-reporting"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3607
    :cond_bec
    :goto_bec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[Judge] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v34

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3608
    return v22

    nop

    nop

    :pswitch_data_c0e
    .packed-switch 0x1
        :pswitch_532
        :pswitch_528
    .end packed-switch

    :pswitch_data_c16
    .packed-switch 0x1
        :pswitch_54d
        :pswitch_54a
        :pswitch_547
        :pswitch_544
    .end packed-switch

    :pswitch_data_c22
    .packed-switch 0x1
        :pswitch_8b6
        :pswitch_8b3
        :pswitch_8b0
        :pswitch_8ad
    .end packed-switch
.end method

.method private judgeWLAsNormal()Z
    .registers 8

    .line 2862
    const/4 v0, 0x0

    .line 2864
    .local v0, "isNormal":Z
    const/4 v1, 0x0

    .line 2865
    .local v1, "isAudioInvolved":Z
    const/4 v2, 0x0

    .line 2866
    .local v2, "isSameUid":Z
    const/4 v3, -0x1

    .line 2867
    .local v3, "wLUid":I
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v4, :cond_72

    .line 2868
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_68

    .line 2869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nd-WL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2871
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2872
    const/4 v1, 0x1

    .line 2874
    :cond_47
    if-nez v4, :cond_54

    .line 2875
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v3, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    .line 2876
    goto :goto_65

    .line 2877
    :cond_54
    const/4 v5, 0x2

    if-le v4, v5, :cond_58

    .line 2879
    goto :goto_68

    .line 2881
    :cond_58
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    if-ne v5, v3, :cond_65

    .line 2883
    const/4 v2, 0x1

    .line 2868
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2887
    .end local v4    # "i":I
    :cond_68
    :goto_68
    if-eqz v1, :cond_72

    if-eqz v2, :cond_72

    .line 2888
    const-string v4, "Match audio-normal pattern, diagnosis as normal"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2889
    const/4 v0, 0x1

    .line 2893
    :cond_72
    return v0
.end method

.method static synthetic lambda$dumpUidWakeLockMap$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .line 1948
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 940
    sget-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_9

    .line 941
    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_9
    return-void
.end method

.method private pkgConvertion()V
    .registers 6

    .line 3615
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 3616
    move v0, v2

    .local v0, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 3617
    if-lt v0, v1, :cond_12

    .end local v0    # "i":I
    goto :goto_4e

    .line 3618
    .restart local v0    # "i":I
    :cond_12
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3620
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_40

    .line 3621
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    .line 3622
    .local v4, "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v4, :cond_40

    .line 3623
    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3626
    .end local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_40
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3616
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3630
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v0, :cond_9a

    .line 3631
    move v0, v2

    .restart local v0    # "i":I
    :goto_53
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9a

    .line 3632
    if-lt v0, v1, :cond_5e

    .end local v0    # "i":I
    goto :goto_9a

    .line 3633
    .restart local v0    # "i":I
    :cond_5e
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3635
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-nez v3, :cond_8c

    .line 3636
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    .line 3637
    .restart local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v4, :cond_8c

    .line 3638
    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3641
    .end local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_8c
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3631
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 3645
    .end local v0    # "i":I
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v0, :cond_e7

    .line 3646
    nop

    .local v2, "i":I
    :goto_9f
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e7

    .line 3647
    if-lt v0, v1, :cond_ab

    .end local v0    # "i":I
    goto :goto_e7

    .line 3648
    .restart local v0    # "i":I
    :cond_ab
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 3650
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_d9

    .line 3651
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    .line 3652
    .local v3, "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v3, :cond_d9

    .line 3653
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3656
    .end local v3    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_d9
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3646
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_9f

    .line 3659
    .end local v2    # "i":I
    :cond_e7
    :goto_e7
    return-void
.end method

.method private startTelephonyMonitor()V
    .registers 7

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    .line 995
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 996
    .local v3, "type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-direct {v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v3    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 999
    :cond_1e
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_30

    .line 1000
    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1004
    :cond_30
    return-void
.end method

.method private substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .registers 8
    .param p1, "bs_start"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs_end"    # Lcom/android/internal/os/BatterySipper;

    .line 4567
    const/4 v0, 0x0

    .line 4569
    .local v0, "isAbn":Z
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2f

    .line 4570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4571
    const/4 v0, 0x1

    .line 4573
    :cond_2f
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 4575
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_64

    .line 4576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][usagePowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4577
    const/4 v0, 0x1

    .line 4579
    :cond_64
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 4581
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_99

    .line 4582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4583
    const/4 v0, 0x1

    .line 4585
    :cond_99
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 4587
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_ce

    .line 4588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4589
    const/4 v0, 0x1

    .line 4591
    :cond_ce
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 4593
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_103

    .line 4594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4595
    const/4 v0, 0x1

    .line 4597
    :cond_103
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 4599
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_138

    .line 4600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4601
    const/4 v0, 0x1

    .line 4603
    :cond_138
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 4605
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_16d

    .line 4606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4607
    const/4 v0, 0x1

    .line 4609
    :cond_16d
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 4611
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1a2

    .line 4612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4613
    const/4 v0, 0x1

    .line 4615
    :cond_1a2
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 4617
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1d7

    .line 4618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4619
    const/4 v0, 0x1

    .line 4621
    :cond_1d7
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 4623
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_20c

    .line 4624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4625
    const/4 v0, 0x1

    .line 4627
    :cond_20c
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 4629
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_241

    .line 4630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4631
    const/4 v0, 0x1

    .line 4633
    :cond_241
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 4635
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_276

    .line 4636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][totalPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4637
    const/4 v0, 0x1

    .line 4639
    :cond_276
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 4641
    if-eqz v0, :cond_289

    .line 4642
    const-string v1, "Abn-Start"

    invoke-direct {p0, v1, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4643
    const-string v1, "Abn-End"

    invoke-direct {p0, v1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4645
    :cond_289
    return-void
.end method

.method private triggerQXDMSelfCleanUp()V
    .registers 4

    .line 1317
    const-string v0, "Trigger QXDM cleanUp task..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1321
    return-void
.end method

.method private updateQXDM_Property(Z)V
    .registers 4
    .param p1, "pack"    # Z

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM packing-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "1"

    goto :goto_11

    :cond_f
    const-string v1, "0"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "persist.sys.standby_qxdm"

    if-eqz p1, :cond_23

    const-string v1, "1"

    goto :goto_25

    :cond_23
    const-string v1, "0"

    :goto_25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method private updateQXDM_Recording_Property(Z)V
    .registers 4
    .param p1, "recording"    # Z

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM recording-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "1"

    goto :goto_11

    :cond_f
    const-string v1, "0"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v0, "persist.sys.standby_qxdm_recording"

    if-eqz p1, :cond_23

    const-string v1, "1"

    goto :goto_25

    :cond_23
    const-string v1, "0"

    :goto_25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-void
.end method


# virtual methods
.method public checkBugReportLiteEnable()Z
    .registers 4

    .line 1068
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_join_stability_plan_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method

.method public checkIfQXDMReadyOnSdCard()V
    .registers 6

    .line 1883
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    .line 1884
    .local v0, "iSReady":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1887
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    goto :goto_42

    .line 1889
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mQXDM_Ready_Check_Count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1890
    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3c

    .line 1891
    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 1893
    const-string/jumbo v1, "re-schedule 5 sec later to check again."

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1894
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f0

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_42

    .line 1896
    :cond_3c
    const-string/jumbo v1, "reach maximum checking, abort re-schedule"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1899
    :goto_42
    return-void
.end method

.method public convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation

    .line 2715
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2717
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2718
    return-object v0
.end method

.method public dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .registers 5
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 2079
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_7e

    goto :goto_7c

    .line 2101
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 2102
    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2104
    :cond_18
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_23

    .line 2105
    const-string v0, "End-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2107
    :cond_23
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_2e

    .line 2108
    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2110
    :cond_2e
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 2111
    const-string v0, "End-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 2116
    :cond_39
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_7c

    .line 2117
    const-string v0, "End-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7c

    .line 2081
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    if-eqz v0, :cond_50

    .line 2082
    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2084
    :cond_50
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_5b

    .line 2085
    const-string v0, "Start-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2087
    :cond_5b
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_66

    .line 2088
    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2090
    :cond_66
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v0, :cond_71

    .line 2091
    const-string v0, "Start-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 2096
    :cond_71
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_7c

    .line 2097
    const-string v0, "Start-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 2121
    :cond_7c
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_d
    .end packed-switch
.end method

.method public dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2062
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_16

    .line 2064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v0, "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2067
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2069
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2071
    .end local v0    # "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_16
    return-void
.end method

.method public declared-synchronized enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "abn_type"    # Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .param p3, "reason"    # Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .param p4, "forShortTest"    # Z

    monitor-enter p0

    .line 1116
    const/16 v0, 0x3ec

    const/4 v1, 0x0

    if-eqz p1, :cond_1b1

    .line 1119
    :try_start_6
    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v2, :cond_1a7

    .line 1122
    const-string/jumbo v2, "persist.sys.qxdm"

    const-string/jumbo v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "outSideQXDM":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1125
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, QXDM is under recoding by oemlogkit, so do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_1ae

    .line 1126
    monitor-exit p0

    return-void

    .line 1136
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v3

    .line 1138
    .local v3, "isBugReportLiteEnable":Z
    if-eqz v3, :cond_178

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v4, :cond_178

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    if-eqz v4, :cond_178

    .line 1141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v4, v6

    .line 1142
    .local v4, "timeGap":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_16e

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_4a

    goto/16 :goto_16e

    .line 1148
    :cond_4a
    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_67

    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_67

    .line 1150
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, away from the latest QXDM grabbing is too short, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_27 .. :try_end_65} :catchall_1ae

    .line 1151
    monitor-exit p0

    return-void

    .line 1154
    :cond_67
    :try_start_67
    iget-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-nez v6, :cond_168

    .line 1156
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    .line 1157
    const-string/jumbo v7, "it\'s time to enable 1st-QXDM-recording now under this round of standby period"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1160
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_246

    goto :goto_8a

    .line 1165
    :pswitch_80
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    goto :goto_8a

    .line 1162
    :pswitch_85
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 1163
    nop

    .line 1168
    :goto_8a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Triggering Reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1170
    iget-boolean v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v7, :cond_ad

    .line 1172
    const-string v0, "OPSA"

    const-string v1, "QXDM is still under recording, do nothing."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16d

    .line 1183
    :cond_ad
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 1184
    const-string v7, "OPSA"

    const-string v8, "Start QXDM recording..."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 1193
    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 1199
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_24e

    goto :goto_10f

    .line 1214
    :pswitch_cc
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    .line 1209
    :pswitch_dd
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "ims"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "OPSA"

    const-string v7, "Copy ims-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    goto :goto_10f

    .line 1205
    :pswitch_ee
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string v7, "data"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v1, "OPSA"

    const-string v7, "Copy data-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    goto :goto_10f

    .line 1201
    :pswitch_fe
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    nop

    .line 1220
    :goto_10f
    const-string/jumbo v1, "persist.vendor.diag.max.num"

    const-string v7, "2"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v1, "persist.vendor.diag.max.size"

    const-string v7, "25"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    .line 1227
    const-string/jumbo v1, "persist.sys.qxdm"

    const-string/jumbo v6, "yes"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string/jumbo v1, "persist.vendor.qxdm.copymask"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v1, "diag_mdlog_start"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1240
    const-string v1, "OPSA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "And schedule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_149

    const-string v7, "20 sec"

    goto :goto_14b

    :cond_149
    const-string v7, "2 min"

    :goto_14b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " later to stop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    if-eqz p4, :cond_161

    const-wide/16 v6, 0x4e20

    goto :goto_164

    :cond_161
    const-wide/32 v6, 0x1d4c0

    :goto_164
    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_16d

    .line 1249
    :cond_168
    const-string v0, "already have telephony-abn action, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1251
    .end local v4    # "timeGap":J
    :goto_16d
    goto :goto_1a5

    .line 1143
    .restart local v4    # "timeGap":J
    :cond_16e
    :goto_16e
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, not satisfy standby-gap, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_67 .. :try_end_176} :catchall_1ae

    .line 1144
    monitor-exit p0

    return-void

    .line 1252
    .end local v4    # "timeGap":J
    :cond_178
    :try_start_178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BugReportLite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | abn-reporting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | qxdm-grab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing when telephony-abn in standby period"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1257
    .end local v2    # "outSideQXDM":Ljava/lang/String;
    .end local v3    # "isBugReportLiteEnable":Z
    :goto_1a5
    goto/16 :goto_241

    .line 1259
    :cond_1a7
    const-string v0, "Not under standby period, do nothing when telephony abnormal"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_241

    .line 1115
    .end local p1    # "enable":Z
    .end local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .end local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .end local p4    # "forShortTest":Z
    :catchall_1ae
    move-exception p1

    goto/16 :goto_243

    .line 1264
    .restart local p1    # "enable":Z
    .restart local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .restart local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .restart local p4    # "forShortTest":Z
    :cond_1b1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop QXDM recording by reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1266
    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v2, :cond_21b

    .line 1267
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 1269
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, v0}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1271
    const-string/jumbo v0, "persist.sys.qxdm"

    const-string/jumbo v2, "no"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    .line 1276
    const-string v0, "diag_mdlog_stop"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1278
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3ef

    const-wide/16 v2, 0xbb8

    packed-switch v0, :pswitch_data_25a

    goto :goto_21a

    .line 1290
    :pswitch_1f1
    const-string v0, "OPSA"

    const-string v1, "Schedule 3 sec later to execute vendor clean-up task directly"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_21a

    .line 1284
    :pswitch_200
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1286
    goto :goto_21a

    .line 1280
    :pswitch_20d
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1282
    nop

    .line 1292
    :goto_21a
    goto :goto_241

    .line 1297
    :cond_21b
    const-string v0, "QXDM is already disabled, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_264

    goto :goto_241

    .line 1307
    :pswitch_22c
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_241

    .line 1308
    const-string v0, "[opbugreportlite] Ever gen-QXDM logs, so schedule 10 sec later to cleanUp Sdcard\'s QXDM logs."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V
    :try_end_23e
    .catchall {:try_start_178 .. :try_end_23e} :catchall_1ae

    goto :goto_241

    .line 1305
    :pswitch_23f
    goto :goto_241

    .line 1302
    :pswitch_240
    nop

    .line 1315
    :cond_241
    :goto_241
    monitor-exit p0

    return-void

    .line 1115
    .end local p1    # "enable":Z
    .end local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .end local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .end local p4    # "forShortTest":Z
    :goto_243
    monitor-exit p0

    .line 1115
    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1

    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_85
        :pswitch_80
    .end packed-switch

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_ee
        :pswitch_dd
        :pswitch_cc
    .end packed-switch

    :pswitch_data_25a
    .packed-switch 0x3
        :pswitch_20d
        :pswitch_200
        :pswitch_1f1
    .end packed-switch

    :pswitch_data_264
    .packed-switch 0x3
        :pswitch_240
        :pswitch_23f
        :pswitch_22c
    .end packed-switch
.end method

.method public genAssistInfoForDump()Ljava/lang/String;
    .registers 2

    .line 1446
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public genBatteryOutlier()V
    .registers 7

    .line 1901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1903
    .local v0, "timespend":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    const-string v3, "battery_outlier"

    invoke-interface {v2, v3}, Lcom/oem/os/IOemExService;->dumpLightBugreport(Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] generate log spends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    .line 1909
    goto :goto_46

    .line 1906
    :catch_2b
    move-exception v2

    .line 1907
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1908
    const-string v3, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception while reporting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public genConfigForDump()Ljava/lang/String;
    .registers 5

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genDiagnosisInfoForDump()Ljava/lang/String;
    .registers 9

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1348
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_45

    .line 1349
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_45

    aget-object v4, v1, v3

    .line 1350
    .local v4, "data_type":Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1351
    .local v5, "info":Ljava/lang/String;
    if-eqz v5, :cond_42

    .line 1352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# Info ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .end local v4    # "data_type":Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .end local v5    # "info":Ljava/lang/String;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1356
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genKWLInfoForDump()Ljava/lang/String;
    .registers 6

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_4e

    .line 1382
    const/4 v1, 0x0

    .line 1383
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 1386
    const-string v3, "PowerManagerService.WakeLocks"

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    add-int/lit8 v1, v1, 0x1

    .line 1390
    :cond_47
    const/4 v3, 0x3

    if-lt v1, v3, :cond_4b

    .end local v1    # "count":I
    .end local v2    # "i":I
    goto :goto_4e

    .line 1383
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1393
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genPktInfoForDump()Ljava/lang/String;
    .registers 5

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1436
    const/4 v2, 0x3

    if-lt v1, v2, :cond_16

    .end local v1    # "i":I
    goto :goto_39

    .line 1437
    .restart local v1    # "i":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1440
    .end local v1    # "i":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genRPMInfoForDump()Ljava/lang/String;
    .registers 2

    .line 1443
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public genTeleChgInfoForDump()Ljava/lang/String;
    .registers 4

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_33

    .line 1091
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1092
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_30

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1096
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .registers 43
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "rawRealtime"    # J
    .param p4, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1968
    move-object/from16 v13, p4

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const/4 v1, 0x0

    if-ne v13, v0, :cond_13

    .line 1969
    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    .line 1972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    goto :goto_15

    .line 1974
    :cond_13
    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    .line 1978
    :goto_15
    const/4 v0, 0x0

    .line 1984
    .local v0, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 1986
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_165

    .line 1987
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v15, v2

    .line 1989
    .end local v0    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v15, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 1992
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :try_start_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 1993
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v1

    .line 1995
    .local v2, "NU":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "iu":I
    :goto_30
    move v10, v4

    .end local v4    # "iu":I
    .local v10, "iu":I
    if-ge v10, v2, :cond_15d

    .line 1997
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid;

    move-object v11, v4

    .line 2008
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v11, v1, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    .line 2009
    .local v4, "mobileRxBytes":J
    const/4 v8, 0x1

    invoke-virtual {v11, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 2010
    .local v6, "mobileTxBytes":J
    const/4 v9, 0x2

    invoke-virtual {v11, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move/from16 v18, v8

    move-wide/from16 v8, v16

    .line 2011
    .local v8, "wifiRxBytes":J
    move-object/from16 v19, v0

    const/4 v0, 0x3

    .end local v0    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v19, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move v0, v10

    move-object v14, v11

    move-wide/from16 v10, v16

    .line 2012
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .local v0, "iu":I
    .local v10, "wifiTxBytes":J
    .local v14, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v16
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5b} :catch_15f

    move/from16 v20, v0

    move v0, v1

    move-object v1, v12

    .end local v0    # "iu":I
    .local v20, "iu":I
    move/from16 v17, v2

    move-object v2, v13

    .end local v2    # "NU":I
    .local v17, "NU":I
    move-object v12, v3

    move/from16 v3, v16

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :try_start_65
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    .line 2015
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2016
    .local v1, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "iw":I
    :goto_72
    if-ltz v2, :cond_eb

    .line 2017
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 2018
    .local v3, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v16

    move-object/from16 v21, v16

    .line 2019
    .local v21, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v21

    if-eqz v0, :cond_e3

    .line 2020
    .end local v21    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v0, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v24, v3

    move-wide/from16 v22, v4

    const/4 v5, 0x0

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v25

    .line 2021
    .end local v3    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v4    # "mobileRxBytes":J
    .local v22, "mobileRxBytes":J
    .local v24, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v25, "totalTimeMicros":J
    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-lez v5, :cond_e5

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e5

    .line 2022
    const-wide/16 v27, 0x1f4

    add-long v27, v25, v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v31, v27

    .line 2023
    .local v31, "totalTimeMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v0

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .end local v0    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v33, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v3, v31

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v31    # "totalTimeMillis":J
    .local v3, "totalTimeMillis":J
    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "totalTimeMillis":J
    .end local v24    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v25    # "totalTimeMicros":J
    .end local v33    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_e5

    .line 2016
    .end local v22    # "mobileRxBytes":J
    .restart local v4    # "mobileRxBytes":J
    :cond_e3
    move-wide/from16 v22, v4

    .end local v4    # "mobileRxBytes":J
    .restart local v22    # "mobileRxBytes":J
    :cond_e5
    :goto_e5
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v4, v22

    const/4 v0, 0x0

    goto :goto_72

    .line 2033
    .end local v2    # "iw":I
    .end local v22    # "mobileRxBytes":J
    .restart local v4    # "mobileRxBytes":J
    :cond_eb
    move-wide/from16 v22, v4

    .end local v4    # "mobileRxBytes":J
    .restart local v22    # "mobileRxBytes":J
    const/4 v0, 0x0

    .line 2034
    .local v0, "count":I
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 2035
    .local v2, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_f8
    if-ltz v3, :cond_135

    .line 2036
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 2037
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 2038
    .local v5, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    .local v16, "iwa":I
    :goto_10a
    move/from16 v34, v16

    .end local v16    # "iwa":I
    .local v34, "iwa":I
    move-object/from16 v35, v1

    move/from16 v1, v34

    if-ltz v1, :cond_12d

    .line 2039
    .end local v34    # "iwa":I
    .local v1, "iwa":I
    .local v35, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/os/BatteryStats$Counter;

    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v36, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    move-object/from16 v37, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v37, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    add-int/2addr v0, v2

    .line 2038
    add-int/lit8 v16, v1, -0x1

    .end local v1    # "iwa":I
    .restart local v16    # "iwa":I
    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    goto :goto_10a

    .line 2035
    .end local v5    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v16    # "iwa":I
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v37    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_12d
    move-object/from16 v36, v2

    const/4 v4, 0x0

    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v35

    goto :goto_f8

    .line 2043
    .end local v3    # "ipkg":I
    .end local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v1, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_135
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v4, 0x0

    .end local v1    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(II)V

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_14e} :catch_15b

    .line 1995
    .end local v0    # "count":I
    .end local v6    # "mobileTxBytes":J
    .end local v8    # "wifiRxBytes":J
    .end local v10    # "wifiTxBytes":J
    .end local v14    # "u":Landroid/os/BatteryStats$Uid;
    .end local v22    # "mobileRxBytes":J
    .end local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "iu":I
    .local v0, "iu":I
    move v1, v4

    move-object v3, v12

    move/from16 v2, v17

    move-object/from16 v12, p0

    move v4, v0

    move-object/from16 v0, v19

    goto/16 :goto_30

    .line 2045
    .end local v0    # "iu":I
    .end local v17    # "NU":I
    .end local v19    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :catch_15b
    move-exception v0

    goto :goto_161

    .line 2047
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_15d
    move-object v12, v3

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    goto :goto_167

    .line 2045
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :catch_15f
    move-exception v0

    move-object v12, v3

    .line 2046
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :goto_161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_167

    .line 2051
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v15    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v0, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_165
    move-object v15, v0

    move-object v12, v1

    .end local v0    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v15    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_167
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v13, v0, :cond_170

    .line 2052
    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    goto :goto_174

    .line 2055
    :cond_170
    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    .line 2058
    :goto_174
    return-object v12
.end method

.method public genWLInfoForDump()Ljava/lang/String;
    .registers 5

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 1363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1364
    const/4 v2, 0x3

    if-lt v1, v2, :cond_16

    .end local v1    # "i":I
    goto :goto_39

    .line 1365
    .restart local v1    # "i":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1374
    .end local v1    # "i":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWRInfoForDump()Ljava/lang/String;
    .registers 5

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 1400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1401
    const/4 v2, 0x3

    if-lt v1, v2, :cond_16

    .end local v1    # "i":I
    goto :goto_39

    .line 1402
    .restart local v1    # "i":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1405
    .end local v1    # "i":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWUAInfoForDump()Ljava/lang/String;
    .registers 5

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 1412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1413
    const/4 v2, 0x3

    if-lt v1, v2, :cond_16

    .end local v1    # "i":I
    goto :goto_39

    .line 1414
    .restart local v1    # "i":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1417
    .end local v1    # "i":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWifiWakeupInfoForDump()Ljava/lang/String;
    .registers 5

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_39

    .line 1424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1425
    const/4 v2, 0x3

    if-lt v1, v2, :cond_16

    .end local v1    # "i":I
    goto :goto_39

    .line 1426
    .restart local v1    # "i":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1429
    .end local v1    # "i":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastQXDMGrabTimeStamp()J
    .registers 3

    .line 1478
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    return-wide v0
.end method

.method public getMiddleCheckPeriod()J
    .registers 3

    .line 1490
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method public getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .registers 28
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "uid"    # I
    .param p3, "rxMobile"    # J
    .param p5, "txMobile"    # J
    .param p7, "rxWifi"    # J
    .param p9, "txWifi"    # J

    move-object/from16 v0, p0

    .line 2702
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v13, p1

    if-ne v13, v1, :cond_23

    .line 2703
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v15

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 2705
    :cond_23
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    .line 2706
    .local v1, "target":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    if-eqz v1, :cond_41

    .line 2707
    move-object v2, v1

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->updateEnd(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    goto :goto_5c

    .line 2710
    :cond_41
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v11

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object v0, v11

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2713
    .end local v1    # "target":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    :goto_5c
    return-void
.end method

.method public getQXDMGrabGapAfterStandbyStart()J
    .registers 3

    .line 1484
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    return-wide v0
.end method

.method public getQXDMGrabMechanismStatus()Z
    .registers 2

    .line 1466
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    return v0
.end method

.method public getQXDMGrabMinimumPeriod()J
    .registers 3

    .line 1481
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    return-wide v0
.end method

.method public getQXDMRecordingStatus()Z
    .registers 2

    .line 1463
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    return v0
.end method

.method public getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .registers 21
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "sourcefile"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2624
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_f

    .line 2625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    .line 2627
    :cond_f
    const/4 v3, 0x0

    .line 2628
    .local v3, "fis":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    .line 2629
    .local v4, "buf_size":I
    new-array v0, v4, [B

    move-object v5, v0

    .line 2631
    .local v5, "buffer":[B
    :try_start_15
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_17} :catch_1f7
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_17} :catch_1d8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_1b9
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b1

    move-object/from16 v6, p2

    :try_start_19
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2632
    const/4 v0, 0x0

    .line 2633
    .local v0, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2636
    .local v7, "nowELAPSED":J
    :goto_22
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_19e

    .line 2637
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2639
    .local v9, "content":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_32} :catch_1af
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_32} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_1ab
    .catchall {:try_start_19 .. :try_end_32} :catchall_1a9

    if-eqz v11, :cond_4f

    .line 2640
    :try_start_34
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3a} :catch_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_40
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3b

    .local v11, "ma":Ljava/util/regex/Matcher;
    goto :goto_55

    .line 2693
    .end local v0    # "length":I
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    :catchall_3b
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_218

    .line 2690
    :catch_40
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_1be

    .line 2688
    :catch_45
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_1dd

    .line 2686
    :catch_4a
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_1fc

    .line 2642
    .restart local v0    # "length":I
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    :cond_4f
    :try_start_4f
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 2645
    .restart local v11    # "ma":Ljava/util/regex/Matcher;
    :goto_55
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_176

    .line 2646
    const-string v12, "RPM Matched...."

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2647
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 2648
    .local v13, "vlow_Count":Ljava/lang/String;
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2650
    .local v15, "vlow_timeSLM":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 2651
    .local v12, "vmin_Count":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 2653
    .local v10, "vmin_timeSLM":Ljava/lang/String;
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v14, :cond_a3

    .line 2655
    iget-object v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move/from16 v16, v0

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_7e} :catch_1af
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_7e} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_7e} :catch_1ab
    .catchall {:try_start_4f .. :try_end_7e} :catchall_1a9

    .end local v0    # "length":I
    .local v16, "length":I
    move/from16 v17, v4

    :try_start_80
    iget-boolean v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .end local v4    # "buf_size":I
    .local v17, "buf_size":I
    if-eqz v4, :cond_87

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_89

    :cond_87
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_89
    invoke-direct {v0, v4, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    iget-boolean v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v14, :cond_9a

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_9c

    :cond_9a
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_9c
    invoke-direct {v4, v14, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    .line 2657
    .end local v16    # "length":I
    .end local v17    # "buf_size":I
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    :cond_a3
    move/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .restart local v16    # "length":I
    .restart local v17    # "buf_size":I
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_cd

    .line 2660
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_f2

    .line 2661
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 2664
    :cond_cd
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_f2

    .line 2666
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_f2

    .line 2667
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    :cond_f2
    :goto_f2
    iget-boolean v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v0, :cond_136

    .line 2673
    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [aosd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [cxsd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    .line 2675
    :cond_136
    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [vlow, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [vmin, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    .end local v10    # "vmin_timeSLM":Ljava/lang/String;
    .end local v12    # "vmin_Count":Ljava/lang/String;
    .end local v13    # "vlow_Count":Ljava/lang/String;
    .end local v15    # "vlow_timeSLM":Ljava/lang/String;
    :goto_175
    goto :goto_17f

    .line 2678
    .end local v16    # "length":I
    .end local v17    # "buf_size":I
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    :cond_176
    move/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .restart local v16    # "length":I
    .restart local v17    # "buf_size":I
    const-string v0, "RPM Can\'t matched...."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2681
    :goto_17f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-ltz v0, :cond_190

    .line 2682
    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_18f
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_18f} :catch_19b
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_18f} :catch_199
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_18f} :catch_197
    .catchall {:try_start_80 .. :try_end_18f} :catchall_217

    .line 2683
    goto :goto_1a0

    .line 2685
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    :cond_190
    nop

    .line 2633
    move/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_22

    .line 2690
    .end local v7    # "nowELAPSED":J
    .end local v16    # "length":I
    :catch_197
    move-exception v0

    goto :goto_1be

    .line 2688
    :catch_199
    move-exception v0

    goto :goto_1dd

    .line 2686
    :catch_19b
    move-exception v0

    goto/16 :goto_1fc

    .line 2694
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :cond_19e
    move/from16 v17, v4

    .line 2695
    .end local v4    # "buf_size":I
    .restart local v17    # "buf_size":I
    :goto_1a0
    :try_start_1a0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1a4

    goto :goto_1a7

    .line 2696
    :catch_1a4
    move-exception v0

    .line 2698
    goto/16 :goto_216

    .line 2697
    :cond_1a7
    :goto_1a7
    goto/16 :goto_216

    .line 2693
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catchall_1a9
    move-exception v0

    goto :goto_1b4

    .line 2690
    :catch_1ab
    move-exception v0

    goto :goto_1bc

    .line 2688
    :catch_1ad
    move-exception v0

    goto :goto_1db

    .line 2686
    :catch_1af
    move-exception v0

    goto :goto_1fa

    .line 2693
    :catchall_1b1
    move-exception v0

    move-object/from16 v6, p2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1b4
    move/from16 v17, v4

    move-object v4, v3

    move-object v3, v0

    .end local v4    # "buf_size":I
    .restart local v17    # "buf_size":I
    goto :goto_21a

    .line 2690
    .end local v17    # "buf_size":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "buf_size":I
    :catch_1b9
    move-exception v0

    move-object/from16 v6, p2

    :goto_1bc
    move/from16 v17, v4

    .line 2691
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "buf_size":I
    :goto_1be
    :try_start_1be
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1d2
    .catchall {:try_start_1be .. :try_end_1d2} :catchall_217

    .line 2694
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1a7

    .line 2695
    :try_start_1d4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1a4

    goto :goto_1a7

    .line 2688
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catch_1d8
    move-exception v0

    move-object/from16 v6, p2

    :goto_1db
    move/from16 v17, v4

    .line 2689
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "buf_size":I
    :goto_1dd
    :try_start_1dd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed to read, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1f1
    .catchall {:try_start_1dd .. :try_end_1f1} :catchall_217

    .line 2694
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1a7

    .line 2695
    :try_start_1f3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1a4

    goto :goto_1a7

    .line 2686
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catch_1f7
    move-exception v0

    move-object/from16 v6, p2

    :goto_1fa
    move/from16 v17, v4

    .line 2687
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "buf_size":I
    :goto_1fc
    :try_start_1fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** File not found, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_210
    .catchall {:try_start_1fc .. :try_end_210} :catchall_217

    .line 2694
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1a7

    .line 2695
    :try_start_212
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_1a4

    goto :goto_1a7

    .line 2699
    :goto_216
    return-void

    .line 2693
    :catchall_217
    move-exception v0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :goto_218
    move-object v4, v3

    move-object v3, v0

    .line 2694
    :goto_21a
    if-eqz v4, :cond_222

    .line 2695
    :try_start_21c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_220

    goto :goto_222

    .line 2696
    :catch_220
    move-exception v0

    nop

    .line 2697
    :cond_222
    :goto_222
    throw v3
.end method

.method public getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2579
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    const/16 v2, 0x400

    .line 2580
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 2582
    .local v3, "buffer":[B
    :try_start_a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2583
    const/4 v4, 0x0

    .line 2584
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2585
    .local v5, "nowELAPSED":J
    :goto_15
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6c

    .line 2586
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2588
    .local v7, "content":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v8, :cond_2e

    .line 2589
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .local v8, "ma":Ljava/util/regex/Matcher;
    goto :goto_34

    .line 2592
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_2e
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2594
    .restart local v8    # "ma":Ljava/util/regex/Matcher;
    :goto_34
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 2595
    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2596
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 2597
    .local v9, "duration":Ljava/lang/String;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2599
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    .end local v9    # "duration":Ljava/lang/String;
    goto :goto_5a

    .line 2601
    :cond_55
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2603
    :goto_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6b

    .line 2604
    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_6a} :catch_91
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6a} :catch_76
    .catchall {:try_start_a .. :try_end_6a} :catchall_74

    .line 2605
    goto :goto_6c

    .line 2607
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_6b
    goto :goto_15

    .line 2614
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_6c
    :goto_6c
    nop

    .line 2615
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_73

    .line 2616
    :catch_71
    move-exception v4

    .line 2618
    goto :goto_ac

    .line 2617
    :cond_73
    :goto_73
    goto :goto_ac

    .line 2613
    :catchall_74
    move-exception v4

    goto :goto_ad

    .line 2610
    :catch_76
    move-exception v4

    .line 2611
    .local v4, "e":Ljava/io/IOException;
    :try_start_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_74

    .line 2614
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_73

    .line 2615
    :try_start_8d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_71

    goto :goto_73

    .line 2608
    :catch_91
    move-exception v4

    .line 2609
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_92 .. :try_end_a6} :catchall_74

    .line 2614
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_73

    .line 2615
    :try_start_a8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_71

    goto :goto_73

    .line 2619
    :goto_ac
    return-object v1

    .line 2613
    :goto_ad
    nop

    .line 2614
    if-eqz v0, :cond_b6

    .line 2615
    :try_start_b0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b6

    .line 2616
    :catch_b4
    move-exception v5

    nop

    .line 2617
    :cond_b6
    :goto_b6
    throw v4
.end method

.method public getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .registers 31
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "sourcefile"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2493
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_f

    .line 2494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    .line 2497
    :cond_f
    const/4 v3, 0x0

    .line 2498
    .local v3, "fis":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    .line 2499
    .local v4, "buf_size":I
    new-array v0, v4, [B

    move-object v5, v0

    .line 2501
    .local v5, "buffer":[B
    :try_start_15
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2502
    const/4 v0, 0x0

    .line 2503
    .local v0, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2506
    .local v7, "nowELAPSED":J
    :goto_22
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1c0

    .line 2507
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2510
    .local v9, "content":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_196

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2511
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/regex/Pattern;

    .line 2512
    .local v13, "pn":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 2513
    .local v14, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_16a

    .line 2514
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " Matched...."

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2521
    iget-boolean v10, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_70} :catch_210
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_70} :catch_1f1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_70} :catch_1d2
    .catchall {:try_start_15 .. :try_end_70} :catchall_1cb

    const/4 v15, 0x2

    if-eqz v10, :cond_aa

    .line 2522
    :try_start_73
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 2523
    .local v10, "sleepCount":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2524
    .local v15, "lastEntered":Ljava/lang/String;
    move/from16 v17, v0

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "lastExited":Ljava/lang/String;
    .local v17, "length":I
    move-object/from16 v18, v0

    const/4 v0, 0x5

    .end local v0    # "lastExited":Ljava/lang/String;
    .local v18, "lastExited":Ljava/lang/String;
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_8a} :catch_a3
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8a} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8a} :catch_95
    .catchall {:try_start_73 .. :try_end_8a} :catchall_8d

    .line 2530
    .local v0, "sleepAccDuration":Ljava/lang/String;
    move-object/from16 v24, v18

    goto :goto_c6

    .line 2569
    .end local v0    # "sleepAccDuration":Ljava/lang/String;
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v10    # "sleepCount":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v15    # "lastEntered":Ljava/lang/String;
    .end local v17    # "length":I
    .end local v18    # "lastExited":Ljava/lang/String;
    :catchall_8d
    move-exception v0

    move-object v2, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_232

    .line 2566
    :catch_95
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_1d7

    .line 2564
    :catch_9c
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_1f6

    .line 2562
    :catch_a3
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_215

    .line 2527
    .local v0, "length":I
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .restart local v13    # "pn":Ljava/util/regex/Pattern;
    .restart local v14    # "ma":Ljava/util/regex/Matcher;
    :cond_aa
    move/from16 v17, v0

    .end local v0    # "length":I
    .restart local v17    # "length":I
    const/4 v0, 0x4

    :try_start_ad
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2528
    .restart local v10    # "sleepCount":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2529
    .local v0, "lastEntered":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2530
    .local v15, "lastExited":Ljava/lang/String;
    move-object/from16 v19, v0

    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_c2} :catch_210
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_c2} :catch_1f1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c2} :catch_1d2
    .catchall {:try_start_ad .. :try_end_c2} :catchall_1cb

    .end local v0    # "lastEntered":Ljava/lang/String;
    .local v19, "lastEntered":Ljava/lang/String;
    move-object/from16 v24, v15

    move-object/from16 v15, v19

    .line 2532
    .end local v19    # "lastEntered":Ljava/lang/String;
    .local v0, "sleepAccDuration":Ljava/lang/String;
    .local v15, "lastEntered":Ljava/lang/String;
    .local v24, "lastExited":Ljava/lang/String;
    :goto_c6
    move/from16 v25, v4

    :try_start_c8
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .end local v4    # "buf_size":I
    .local v25, "buf_size":I
    if-ne v2, v4, :cond_ec

    .line 2534
    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_c8 .. :try_end_ce} :catch_165
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_ce} :catch_160
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_ce} :catch_15b
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_155

    move-object/from16 v26, v5

    :try_start_d0
    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    .end local v5    # "buffer":[B
    .local v26, "buffer":[B
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object/from16 v18, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    move-object/from16 v22, v24

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v23}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_154

    .line 2535
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :cond_ec
    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_125

    .line 2538
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f3
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_122

    .line 2539
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_119

    .line 2541
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    move-object/from16 v6, v24

    invoke-virtual {v5, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v24    # "lastExited":Ljava/lang/String;
    .local v6, "lastExited":Ljava/lang/String;
    goto :goto_11b

    .line 2538
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_119
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v24, v6

    move-object/from16 v6, p2

    goto :goto_f3

    .line 2553
    .end local v4    # "i":I
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_122
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    goto :goto_154

    .line 2544
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_125
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_154

    .line 2546
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_12c
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_154

    .line 2547
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_14f

    .line 2549
    iget-object v2, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_14f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_12c

    .line 2553
    .end local v0    # "sleepAccDuration":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "lastExited":Ljava/lang/String;
    .end local v10    # "sleepCount":Ljava/lang/String;
    .end local v15    # "lastEntered":Ljava/lang/String;
    :cond_154
    :goto_154
    goto :goto_188

    .line 2569
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v17    # "length":I
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catchall_155
    move-exception v0

    move-object/from16 v26, v5

    move-object v2, v0

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_232

    .line 2566
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_15b
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_1d7

    .line 2564
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_160
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_1f6

    .line 2562
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_165
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_215

    .line 2554
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .local v0, "length":I
    .local v4, "buf_size":I
    .restart local v5    # "buffer":[B
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .restart local v13    # "pn":Ljava/util/regex/Pattern;
    .restart local v14    # "ma":Ljava/util/regex/Matcher;
    :cond_16a
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v17    # "length":I
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CAN NOT Matched...."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2556
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    :goto_188
    nop

    .line 2510
    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    const/4 v10, 0x0

    goto/16 :goto_3a

    .line 2557
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v17    # "length":I
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :cond_196
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v17    # "length":I
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    const-wide/16 v10, 0x1388

    cmp-long v0, v4, v10

    if-ltz v0, :cond_1ad

    .line 2558
    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_1ac} :catch_1be
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_1ac} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_1ac} :catch_1ba
    .catchall {:try_start_d0 .. :try_end_1ac} :catchall_230

    .line 2559
    goto :goto_1c4

    .line 2561
    .end local v9    # "content":Ljava/lang/String;
    :cond_1ad
    nop

    .line 2503
    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    goto/16 :goto_22

    .line 2566
    .end local v7    # "nowELAPSED":J
    .end local v17    # "length":I
    :catch_1ba
    move-exception v0

    goto :goto_1d7

    .line 2564
    :catch_1bc
    move-exception v0

    goto :goto_1f6

    .line 2562
    :catch_1be
    move-exception v0

    goto :goto_215

    .line 2570
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :cond_1c0
    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2571
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_1c4
    :try_start_1c4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1c8

    goto :goto_1ca

    .line 2572
    :catch_1c8
    move-exception v0

    .line 2574
    goto :goto_22f

    .line 2573
    :cond_1ca
    :goto_1ca
    goto :goto_22f

    .line 2569
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catchall_1cb
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object v2, v0

    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    goto :goto_232

    .line 2566
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_1d2
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2567
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_1d7
    :try_start_1d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1eb
    .catchall {:try_start_1d7 .. :try_end_1eb} :catchall_230

    .line 2570
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1ca

    .line 2571
    :try_start_1ed
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f0} :catch_1c8

    goto :goto_1ca

    .line 2564
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_1f1
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2565
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_1f6
    :try_start_1f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed to read, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_20a
    .catchall {:try_start_1f6 .. :try_end_20a} :catchall_230

    .line 2570
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1ca

    .line 2571
    :try_start_20c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_1c8

    goto :goto_1ca

    .line 2562
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_210
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2563
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_215
    :try_start_215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** File not found, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_229
    .catchall {:try_start_215 .. :try_end_229} :catchall_230

    .line 2570
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1ca

    .line 2571
    :try_start_22b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22e} :catch_1c8

    goto :goto_1ca

    .line 2575
    :goto_22f
    return-void

    .line 2569
    :catchall_230
    move-exception v0

    move-object v2, v0

    .line 2570
    :goto_232
    if-eqz v3, :cond_23a

    .line 2571
    :try_start_234
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_238

    goto :goto_23a

    .line 2572
    :catch_238
    move-exception v0

    nop

    .line 2573
    :cond_23a
    :goto_23a
    throw v2
.end method

.method public getStandbyStart()J
    .registers 3

    .line 1487
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    return-wide v0
.end method

.method public getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2390
    const/4 v0, 0x0

    .line 2391
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2392
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/16 v2, 0x400

    .line 2393
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 2395
    .local v3, "buffer":[B
    :try_start_a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2396
    const/4 v4, 0x0

    .line 2397
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2398
    .local v5, "nowELAPSED":J
    :goto_15
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1a8

    .line 2399
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2400
    .local v7, "content":Ljava/lang/String;
    const-string v8, "OPSA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] WiFi WakeUp content=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2402
    .local v8, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_190

    .line 2403
    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2404
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 2405
    .local v9, "count":Ljava/lang/String;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2407
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2409
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2411
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2413
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2415
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2417
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2419
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2421
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2423
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2425
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2427
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    const/16 v10, 0xd

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2429
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2431
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2433
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2435
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .end local v9    # "count":Ljava/lang/String;
    goto :goto_195

    .line 2438
    :cond_190
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2440
    :goto_195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1a6

    .line 2441
    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1a5} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a5} :catch_1b2
    .catchall {:try_start_a .. :try_end_1a5} :catchall_1b0

    .line 2442
    goto :goto_1a8

    .line 2444
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_1a6
    goto/16 :goto_15

    .line 2451
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_1a8
    :goto_1a8
    nop

    .line 2452
    :try_start_1a9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ad

    goto :goto_1af

    .line 2453
    :catch_1ad
    move-exception v4

    .line 2455
    goto :goto_1e8

    .line 2454
    :cond_1af
    :goto_1af
    goto :goto_1e8

    .line 2450
    :catchall_1b0
    move-exception v4

    goto :goto_1e9

    .line 2447
    :catch_1b2
    move-exception v4

    .line 2448
    .local v4, "e":Ljava/io/IOException;
    :try_start_1b3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1c7
    .catchall {:try_start_1b3 .. :try_end_1c7} :catchall_1b0

    .line 2451
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1af

    .line 2452
    :try_start_1c9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1ad

    goto :goto_1af

    .line 2445
    :catch_1cd
    move-exception v4

    .line 2446
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_1ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1e2
    .catchall {:try_start_1ce .. :try_end_1e2} :catchall_1b0

    .line 2451
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1af

    .line 2452
    :try_start_1e4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1ad

    goto :goto_1af

    .line 2456
    :goto_1e8
    return-object v1

    .line 2450
    :goto_1e9
    nop

    .line 2451
    if-eqz v0, :cond_1f2

    .line 2452
    :try_start_1ec
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_1f0

    goto :goto_1f2

    .line 2453
    :catch_1f0
    move-exception v5

    nop

    .line 2454
    :cond_1f2
    :goto_1f2
    throw v4
.end method

.method public ifDiagnosisAsNormal()Z
    .registers 2

    .line 986
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    return v0
.end method

.method public ifEverGenQXDMToCleanUp()Z
    .registers 2

    .line 1849
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return v0
.end method

.method public ifUnderStandbyPeriod()Z
    .registers 2

    .line 1852
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method public declared-synchronized immediateInformScreenON(Z)V
    .registers 5
    .param p1, "ifTriggerDaignosis"    # Z

    monitor-enter p0

    .line 1056
    :try_start_1
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    .line 1058
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1060
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eqz p1, :cond_19

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    goto :goto_1b

    :cond_19
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    :goto_1b
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 1061
    monitor-exit p0

    return-void

    .line 1055
    .end local p1    # "ifTriggerDaignosis":Z
    :catchall_20
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public middleSpecificCheck()V
    .registers 8

    .line 1914
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v0, :cond_69

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v0, v2

    .line 1919
    .local v0, "timeGap":J
    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_69

    .line 1921
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1922
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1924
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1925
    const-string v2, "Middle Check : Observe aosd / vmin no increase !"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v2

    .line 1931
    .local v2, "rpmDetailJudge":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [judgeRPM] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1933
    if-eqz v2, :cond_63

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1935
    const/4 v3, 0x1

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    .line 1937
    .end local v2    # "rpmDetailJudge":Ljava/lang/String;
    :cond_63
    goto :goto_69

    .line 1938
    :cond_64
    const-string v2, "Middle Check : Nothing special..."

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1942
    .end local v0    # "timeGap":J
    :cond_69
    :goto_69
    return-void
.end method

.method public notifyEnterDeepIdle()V
    .registers 2

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 1451
    return-void
.end method

.method public sendCleanUpQXDMIfAppropriate()V
    .registers 2

    .line 1861
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_18

    .line 1862
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1863
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->triggerQXDMSelfCleanUp()V

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    goto :goto_1d

    .line 1868
    :cond_11
    const-string/jumbo v0, "oops, although diagnose as normal, but QXDM log is not ready, no way to clean it :("

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1d

    .line 1871
    :cond_18
    const-string v0, "No need to cleanup due to no qxdm generation at this round."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1873
    :goto_1d
    return-void
.end method

.method public setLastQXDMGrabTimeStamp(J)V
    .registers 5
    .param p1, "desiredTime"    # J

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset mLastQXDMGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1475
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 1476
    return-void
.end method

.method public declared-synchronized simulateTelephonyAbnormal(Z)V
    .registers 5
    .param p1, "forShortTest"    # Z

    monitor-enter p0

    .line 1072
    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 1073
    monitor-exit p0

    return-void

    .line 1071
    .end local p1    # "forShortTest":Z
    :catchall_b
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1453
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 1454
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p3, "batteryLevelDrop"    # I
    .param p4, "mA"    # F
    .param p5, "mACriteria"    # F
    .param p6, "mMinimumPeriod"    # J
    .param p8, "fortest"    # Z

    .line 1460
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v12, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    invoke-virtual {v11, v12}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 1461
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;J)V
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p3, "delay"    # J

    .line 1457
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;J)V

    .line 1458
    return-void
.end method

.method public triggerCleanUpQXDMUnderVendor()V
    .registers 3

    .line 1855
    const-string/jumbo v0, "triggering clean-up QXDM trash under vendor partition directly"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 1858
    const-string/jumbo v0, "persist.sys.qxdm_clean_old"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method public triggerCopyQXDMToSdCard()V
    .registers 5

    .line 1875
    const-string v0, "OPSA"

    const-string v1, "Start to copy qxdm log to sdcard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1881
    return-void
.end method

.method public updateQXDMGrabGapAfterStandbyStart(J)V
    .registers 5
    .param p1, "gap"    # J

    .line 1499
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabGapAfterStandbyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1501
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    .line 1503
    :cond_21
    return-void
.end method

.method public updateQXDMGrabMechanism(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabMechanism : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1470
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    .line 1471
    return-void
.end method

.method public updateQXDMGrabMinimumPeriod(J)V
    .registers 5
    .param p1, "period"    # J

    .line 1493
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update updateQXDMGrabMinimumPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1495
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    .line 1497
    :cond_21
    return-void
.end method

.method public declared-synchronized updateReportingFlag(Z)V
    .registers 5
    .param p1, "report"    # Z

    monitor-enter p0

    .line 1063
    :try_start_1
    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update reporting-flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 1065
    monitor-exit p0

    return-void

    .line 1062
    .end local p1    # "report":Z
    :catchall_1c
    move-exception p1

    monitor-exit p0

    .line 1062
    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .registers 5
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .param p2, "value"    # F

    .line 1517
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_164

    goto/16 :goto_162

    .line 1571
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1572
    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    goto/16 :goto_162

    .line 1567
    :pswitch_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1568
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    .line 1569
    goto/16 :goto_162

    .line 1563
    :pswitch_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_TIME_SLM_SEC_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1564
    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    .line 1565
    goto/16 :goto_162

    .line 1559
    :pswitch_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mAVERAGE_CURRENT_EXCEED_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1560
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    .line 1561
    goto/16 :goto_162

    .line 1555
    :pswitch_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1556
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 1557
    goto/16 :goto_162

    .line 1551
    :pswitch_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1552
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 1553
    goto/16 :goto_162

    .line 1547
    :pswitch_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1548
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 1549
    goto/16 :goto_162

    .line 1543
    :pswitch_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1544
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 1545
    goto/16 :goto_162

    .line 1539
    :pswitch_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1540
    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 1541
    goto/16 :goto_162

    .line 1535
    :pswitch_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1536
    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 1537
    goto :goto_162

    .line 1531
    :pswitch_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1532
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 1533
    goto :goto_162

    .line 1527
    :pswitch_11d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1528
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 1529
    goto :goto_162

    .line 1523
    :pswitch_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1524
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 1525
    goto :goto_162

    .line 1519
    :pswitch_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1520
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 1521
    nop

    .line 1575
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_134
        :pswitch_11d
        :pswitch_106
        :pswitch_ed
        :pswitch_d3
        :pswitch_bb
        :pswitch_a3
        :pswitch_8b
        :pswitch_73
        :pswitch_5b
        :pswitch_40
        :pswitch_28
        :pswitch_d
    .end packed-switch
.end method

.method public updateStandbyMiddleCheck(J)V
    .registers 5
    .param p1, "middileCheck"    # J

    .line 1505
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mMiddleCheckPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1507
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    goto :goto_32

    .line 1509
    :cond_22
    const-string v0, "Opps, Update mMiddleCheckPeriod to negative value, disable middle_check mechanism"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1511
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    .line 1513
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1515
    :goto_32
    return-void
.end method
