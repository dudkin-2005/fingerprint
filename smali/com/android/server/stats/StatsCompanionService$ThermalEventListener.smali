.class final Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThermalEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1208
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .locals 0

    .line 1208
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/os/Temperature;)V
    .locals 2

    .line 1210
    invoke-virtual {p2}, Landroid/os/Temperature;->getType()I

    move-result v0

    .line 1211
    if-eqz p1, :cond_0

    .line 1212
    const/4 p1, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    const/4 p1, 0x2

    .line 1214
    :goto_0
    invoke-virtual {p2}, Landroid/os/Temperature;->getValue()F

    move-result p2

    .line 1210
    const/16 v1, 0x56

    invoke-static {v1, v0, p1, p2}, Landroid/util/StatsLog;->write(IIIF)I

    .line 1215
    return-void
.end method
