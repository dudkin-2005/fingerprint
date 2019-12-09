.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerConsumption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
        ">;"
    }
.end annotation


# instance fields
.field public audioPowerMah:D

.field public bluetoothPowerMah:D

.field public cameraPowerMah:D

.field public cpuPowerMah:D

.field df:Ljava/text/DecimalFormat;

.field public drainType:Ljava/lang/String;

.field public flashlightPowerMah:D

.field public gpsPowerMah:D

.field public mobileRadioPowerMah:D

.field public pkgName:Ljava/lang/String;

.field public sensorPowerMah:D

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

.field public totalPowerMah:D

.field public totalTime:J

.field public uid:Ljava/lang/Integer;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public videoPowerMah:D

.field public wakeLockPowerMah:D

.field public wifiPowerMah:D


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 3871
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    .line 3850
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    .line 3851
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3852
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 3854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    .line 3855
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    .line 3856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 3857
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 3858
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 3859
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 3860
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 3861
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 3862
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 3863
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 3864
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 3865
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 3866
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 3867
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 3869
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->df:Ljava/text/DecimalFormat;

    .line 3872
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "_uid"    # Ljava/lang/Integer;

    .line 3874
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    .line 3850
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    .line 3851
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3852
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 3854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    .line 3855
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    .line 3856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 3857
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 3858
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 3859
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 3860
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 3861
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 3862
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 3863
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 3864
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 3865
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 3866
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 3867
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 3869
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->df:Ljava/text/DecimalFormat;

    .line 3875
    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    .line 3876
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initDrainType()V

    .line 3877
    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .param p1, "x1"    # Lcom/android/internal/os/BatterySipper;

    .line 3848
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3848
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initPkgNameByUid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3848
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .param p1, "x1"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "x2"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3848
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3848
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 3848
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .registers 7
    .param p1, "pc"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3880
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3881
    return v0

    .line 3884
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-ne v1, v2, :cond_4c

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    if-ne v1, v2, :cond_4c

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4c

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4c

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4c

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4c

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4c

    .line 3889
    const/4 v0, 0x1

    return v0

    .line 3891
    :cond_4c
    return v0
.end method

.method private handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .registers 6
    .param p1, "past"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3992
    if-eqz p1, :cond_56

    .line 3993
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 3994
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 3995
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 3996
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 3997
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 3999
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 4000
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 4001
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 4002
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 4003
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 4004
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 4006
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 4009
    :cond_56
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_a3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a1

    goto :goto_a3

    .line 4018
    :cond_a1
    const/4 v0, 0x1

    return v0

    .line 4015
    :cond_a3
    :goto_a3
    const/4 v0, 0x0

    return v0
.end method

.method private initDrainType()V
    .registers 3

    .line 3895
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x54

    if-ge v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_26

    .line 3896
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDrainTypeByFakeUid(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    .line 3897
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3899
    :cond_26
    return-void
.end method

.method private initPkgNameByUid()Z
    .registers 7

    .line 3902
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, -0x54

    if-ge v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x64

    if-le v0, v2, :cond_16

    .line 3904
    return v1

    .line 3906
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3907
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    .line 3908
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3909
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 3910
    .local v0, "pp":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_47

    .line 3911
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 3912
    iget v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    .line 3914
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3915
    .local v3, "tmp":[Ljava/lang/String;
    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3917
    const-string v4, "[a-zA-z]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3918
    .local v4, "p":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 3919
    return v1

    .line 3921
    :cond_66
    return v2

    .line 3924
    .end local v0    # "pp":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "tmp":[Ljava/lang/String;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_67
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_75

    .line 3925
    const-string/jumbo v0, "kernel"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3926
    return v1

    .line 3928
    :cond_75
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-eqz v0, :cond_81

    .line 3929
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 3931
    :cond_81
    return v2
.end method

.method private toMDM(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "seq"    # I
    .param p2, "isApp"    # Z

    .line 4022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4024
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    if-eqz p2, :cond_10f

    .line 4025
    if-ne p1, v1, :cond_16

    .line 4026
    const-string/jumbo v1, "{\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4028
    :cond_16
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4029
    const-string v1, "\",\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4031
    :goto_29
    const-string v1, "\",\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4032
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_36

    const-string/jumbo v1, "unknow"

    goto :goto_38

    :cond_36
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 4031
    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    const-string v1, "\",\"pv\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4034
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-nez v1, :cond_48

    const-string/jumbo v1, "unknow"

    goto :goto_4a

    .line 4035
    :cond_48
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 4033
    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    const-string v1, "\",\"pc\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4037
    const-string v1, "\",\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4038
    const-string v1, "\",\"total\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 4039
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4040
    const-string v1, "\",\"cpu\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    const-string v1, "\",\"audio\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 4042
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4043
    const-string v1, "\",\"video\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 4044
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    const-string v1, "\",\"wake\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 4046
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4047
    const-string v1, "\",\"radio\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 4048
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4049
    const-string v1, "\",\"wifi\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    const-string v1, "\",\"bt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 4051
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    const-string v1, "\",\"gps\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    const-string v1, "\",\"sensor\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 4054
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4053
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    const-string v1, "\",\"camera\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 4056
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    const-string v1, "\",\"flash\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 4058
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_153

    .line 4061
    :cond_10f
    if-ne p1, v1, :cond_125

    .line 4062
    const-string/jumbo v1, "{\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_11f

    const-string/jumbo v1, "unknow"

    goto :goto_121

    :cond_11f
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 4062
    :goto_121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_140

    .line 4065
    :cond_125
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4066
    const-string v1, "\",\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_13b

    const-string/jumbo v1, "unknow"

    goto :goto_13d

    :cond_13b
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 4066
    :goto_13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    :goto_140
    const-string v1, "\",\"total\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 4070
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    :goto_153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    .registers 4
    .param p1, "newSipper"    # Lcom/android/internal/os/BatterySipper;

    .line 3948
    if-eqz p1, :cond_32

    .line 3949
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 3950
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 3951
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 3952
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 3953
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 3954
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 3955
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 3956
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 3957
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 3958
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 3959
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 3960
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 3962
    :cond_32
    return-void
.end method

.method private updatePowerItems(Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V
    .registers 7
    .param p1, "newSipper"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "oldSipper"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3966
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 3967
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 3969
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 3970
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 3972
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 3974
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 3976
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 3977
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 3979
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 3980
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 3982
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 3984
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 3986
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 3989
    :cond_58
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)I
    .registers 6
    .param p1, "another"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3939
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    .line 3940
    const/4 v0, -0x1

    return v0

    .line 3941
    :cond_a
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    .line 3942
    const/4 v0, 0x1

    return v0

    .line 3944
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3848
    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->compareTo(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 4079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4081
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PowerConsumption{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    const-string/jumbo v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4084
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4086
    const-string v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    const-string v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    const-string v1, ",mVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4092
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4093
    const-string v1, ",mVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4096
    const-string v1, ",totalPowerMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4099
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4101
    const-string v1, ",mdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
