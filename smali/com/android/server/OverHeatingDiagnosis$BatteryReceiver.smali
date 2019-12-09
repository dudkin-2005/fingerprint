.class Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .registers 2

    .line 946
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x1"    # Lcom/android/server/OverHeatingDiagnosis$1;

    .line 946
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 950
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 952
    return-void

    .line 955
    :cond_7
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z
    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 956
    return-void

    .line 959
    :cond_10
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, "chargePlug":I
    const-string/jumbo v2, "level"

    .line 962
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x64

    mul-int/2addr v2, v4

    const-string/jumbo v5, "scale"

    .line 963
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    div-int/2addr v2, v4

    .line 965
    .local v2, "level":I
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 967
    .local v4, "status":I
    const/4 v6, 0x0

    .line 970
    .local v6, "fastCharge":Z
    const-string v7, "fastcharge_status"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_40

    move v7, v8

    goto :goto_41

    :cond_40
    move v7, v3

    :goto_41
    move v6, v7

    .line 972
    if-eqz v6, :cond_47

    .line 973
    const/16 v1, 0x8

    goto :goto_4e

    .line 975
    :cond_47
    const-string/jumbo v7, "plugged"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 977
    :goto_4e
    const/4 v5, 0x2

    if-eq v4, v5, :cond_56

    const/4 v5, 0x5

    if-ne v4, v5, :cond_55

    goto :goto_56

    :cond_55
    goto :goto_57

    :cond_56
    :goto_56
    move v3, v8

    .line 981
    .local v3, "isCharging":Z
    :goto_57
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-ne v5, v8, :cond_7c

    .line 982
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$800(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-eqz v5, :cond_73

    .line 983
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    goto :goto_7c

    .line 985
    :cond_73
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    .line 989
    :cond_7c
    :goto_7c
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1600(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-eq v2, v5, :cond_b9

    .line 990
    const-string v5, "OverHeatingDiagnosis"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " level="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I
    invoke-static {v5, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1602(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 993
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    .line 994
    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v8, v2, v1, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 995
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 998
    .end local v1    # "chargePlug":I
    .end local v2    # "level":I
    .end local v3    # "isCharging":Z
    .end local v4    # "status":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "fastCharge":Z
    :cond_b9
    return-void
.end method
