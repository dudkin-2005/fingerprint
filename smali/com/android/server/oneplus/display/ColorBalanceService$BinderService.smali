.class final Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;
.super Lcom/oneplus/display/IColorBalanceManager$Stub;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 2

    .line 3821
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Lcom/oneplus/display/IColorBalanceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "x1"    # Lcom/android/server/oneplus/display/ColorBalanceService$1;

    .line 3821
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public ColorBalance2GrayColor()V
    .registers 2

    .line 3876
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3877
    return-void
.end method

.method public DisableColor(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 3898
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3899
    return-void
.end method

.method public GrayColor2ColorBalance()V
    .registers 6

    .line 3880
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3881
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 3883
    :cond_25
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6c

    .line 3884
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    new-array v2, v1, [I

    const/16 v3, 0x47

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 3885
    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6a

    sget v2, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6a

    sget v2, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6a

    move v4, v1

    nop

    :cond_6a
    iput-boolean v4, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    .line 3888
    :cond_6c
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-boolean v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_73

    .line 3889
    return-void

    .line 3890
    :cond_73
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 3891
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3892
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0xa

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3894
    :cond_8f
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3895
    return-void
.end method

.method public autoModeonStart()V
    .registers 3

    .line 3868
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3869
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    goto :goto_19

    .line 3871
    :cond_12
    const-string v0, "ColorBalanceService"

    const-string v1, "autoModeonStart mAutoMode is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    :goto_19
    return-void
.end method

.method public getIsAutoTime()Z
    .registers 2

    .line 3864
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getAutoTime()Z

    move-result v0

    return v0
.end method

.method public sendMsg(I)V
    .registers 5
    .param p1, "v"    # I

    .line 3824
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3826
    return-void
.end method

.method public setActiveMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3829
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3830
    return-void
.end method

.method public setColorBalance(I)V
    .registers 5
    .param p1, "value"    # I

    .line 3838
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    const/16 v0, -0x200

    if-ne p1, v0, :cond_1b

    .line 3840
    return-void

    .line 3841
    :cond_1b
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3842
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3843
    const/16 v0, 0x200

    if-gt p1, v0, :cond_39

    if-ne p1, v0, :cond_3e

    .line 3844
    :cond_39
    add-int/lit16 p1, p1, -0x200

    goto :goto_3e

    .line 3847
    :cond_3c
    add-int/lit8 p1, p1, -0x1a

    .line 3850
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # ++operator for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 3851
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3852
    return-void
.end method

.method public setColorBalanceActivated(I)V
    .registers 4
    .param p1, "activated"    # I

    .line 3860
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3861
    return-void
.end method

.method public setDefaultMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3833
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3834
    return-void
.end method

.method public setGrayColorActivated(I)V
    .registers 4
    .param p1, "activated"    # I

    .line 3856
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3857
    return-void
.end method
