.class Lcom/android/server/oneplus/display/ColorBalanceService$3;
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

    .line 2087
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2108
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2091
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 2094
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 2095
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    goto :goto_33

    .line 2097
    :cond_1f
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 2099
    :goto_33
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/16 v1, 0x23

    if-le v0, v1, :cond_50

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    :cond_50
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2101
    :cond_5c
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$3;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 2103
    :cond_67
    return-void
.end method
