.class public Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;
.super Landroid/os/BatteryStats$Uid;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyUid"
.end annotation


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 4748
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 4749
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    .line 4750
    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4917
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 5021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 5036
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .registers 2

    .line 5056
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .registers 2

    .line 5051
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 5031
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 5046
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 5041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4932
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuActiveTime()J
    .registers 3

    .line 5089
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .registers 2

    .line 5094
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .registers 3
    .param p1, "which"    # I

    .line 5079
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(II)[J
    .registers 4
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 5099
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 5066
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 5070
    return-void
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4927
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4937
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4942
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4862
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 4784
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 4779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 3
    .param p1, "which"    # I

    .line 4996
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .registers 4
    .param p1, "which"    # I

    .line 4991
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .registers 4
    .param p1, "which"    # I

    .line 5074
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 5026
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4981
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4986
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 4804
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 4794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .registers 7
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 4947
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .registers 3
    .param p1, "state"    # I

    .line 4952
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 4799
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .registers 3
    .param p1, "which"    # I

    .line 5084
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .registers 4
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 5104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 4789
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 4774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .line 5006
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .registers 6
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 5011
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 4754
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4971
    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .line 5001
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4957
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4922
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 4759
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .registers 4
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 4907
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .registers 7
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 4902
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 5016
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4912
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .registers 4
    .param p1, "which"    # I

    .line 5061
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4857
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .registers 5
    .param p1, "elapsedRealtimeUs"    # J

    .line 4887
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundCount(I)I
    .registers 3
    .param p1, "which"    # I

    .line 4882
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .registers 5
    .param p1, "elapsedRealtimeUs"    # J

    .line 4892
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4897
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiScanCount(I)I
    .registers 3
    .param p1, "which"    # I

    .line 4872
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4867
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 4877
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNetworkActivity()Z
    .registers 2

    .line 4976
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .registers 2

    .line 4966
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4853
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4849
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4817
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4821
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .registers 2
    .param p1, "type"    # I

    .line 4962
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .registers 4
    .param p1, "csph"    # I
    .param p2, "elapsedRealtime"    # J

    .line 4833
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4837
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4845
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4841
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4809
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4825
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4829
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .registers 3
    .param p1, "elapsedRealtime"    # J

    .line 4813
    return-void
.end method
