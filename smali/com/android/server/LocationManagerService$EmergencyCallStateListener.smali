.class Lcom/android/server/LocationManagerService$EmergencyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .line 461
    iput-object p1, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .line 464
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Call...state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_20
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 466
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_30

    # getter for: Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_30
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Call...Check WiFi status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "...mEmWifiStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_61
    iget-object v0, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    # getter for: Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 469
    const-string v0, "LocationManagerService"

    const-string v1, "Emergency Call...WiFi default Enabled, ignore...."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 472
    :cond_7b
    const/4 v0, 0x1

    if-eq p1, v0, :cond_81

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9b

    :cond_81
    # getter for: Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 473
    const-string v1, "LocationManagerService"

    const-string v2, "Emergency Call Start...Modify state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 475
    # setter for: Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1302(Z)Z

    goto :goto_af

    .line 477
    :cond_9b
    const-string v0, "LocationManagerService"

    const-string v1, "Emergency Call End...Restore state..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 479
    # setter for: Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1302(Z)Z

    .line 482
    :cond_af
    :goto_af
    return-void
.end method
