.class Lcom/android/server/oneplus/display/ColorBalanceService$4;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 2110
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2137
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2113
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2115
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_69

    :cond_1a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    if-ge v0, v1, :cond_69

    .line 2116
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_73

    .line 2117
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # ++operator for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 2118
    const-string v0, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLowLightCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-ne v0, v1, :cond_73

    .line 2120
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # ++operator for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 2121
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x10

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I
    invoke-static {v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v3

    const/16 v4, 0x5dc

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_73

    .line 2125
    :cond_69
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 2126
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # ++operator for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 2128
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 2132
    :cond_7d
    return-void
.end method
