.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_POLLING_UNTIL_ABORT:I = 0x6

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final POLLING_CELL_INFO_INTERVAL:I = 0x2710

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPollingComplete:I

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 107
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 140
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 145
    .local v0, "numbers":[I
    const-string v1, "ecc.test.mcc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_90

    .line 146
    const/4 v1, -0x1

    .line 148
    .local v1, "testMcc":I
    :try_start_3b
    const-string v3, "ecc.test.mcc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4b

    move v1, v3

    .line 151
    goto :goto_54

    .line 149
    :catch_4b
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "EmergencyAffordanceService"

    const-string/jumbo v5, "mcc should be a number"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_54
    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add a test mcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    .line 156
    nop

    .line 156
    .local v2, "i":I
    :goto_75
    array-length v3, v0

    if-ge v2, v3, :cond_86

    .line 157
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 159
    .end local v2    # "i":I
    :cond_86
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v1    # "testMcc":I
    goto :goto_ab

    .line 161
    :cond_90
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    .line 162
    nop

    .line 162
    .restart local v2    # "i":I
    :goto_99
    move v1, v2

    .line 162
    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_ab

    .line 163
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v1, 0x1

    .line 162
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_99

    .line 167
    .end local v2    # "i":I
    :cond_ab
    :goto_ab
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/emergency/EmergencyAffordanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 57
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    return v0
.end method

.method private handleInitializeState()V
    .registers 3

    .line 261
    const-string v0, "EmergencyAffordanceService"

    const-string/jumbo v1, "handleInitializeState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    .line 267
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    return-void

    .line 272
    :cond_12
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStartPollingCellInfo()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 276
    return-void
.end method

.method private handleUpdateCellInfo()Z
    .registers 14

    .line 361
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateCellInfo  cellInfos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-nez v0, :cond_97

    .line 366
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_96

    const-string v3, "000"

    const-string/jumbo v4, "sys.radio.mcc"

    const-string v5, "000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 367
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "mccmnc":Ljava/lang/String;
    const-string v4, "EmergencyAffordanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update mcc from network mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_96

    .line 370
    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "mcc":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.oem.intent.action.mcc_changed"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "mcc"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "EmergencyAffordanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast mcc change intent mcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 377
    const-string/jumbo v1, "sys.radio.mcc"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v3    # "mccmnc":Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_96
    return v2

    .line 384
    :cond_97
    const/4 v3, 0x0

    .line 385
    .local v3, "stopScanningAfterScan":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    .line 386
    .local v5, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v6, 0x0

    .line 387
    .local v6, "mcc":I
    instance-of v7, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_b9

    .line 388
    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v7}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    goto :goto_d8

    .line 389
    :cond_b9
    instance-of v7, v5, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_c9

    .line 390
    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoLte;

    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    goto :goto_d8

    .line 391
    :cond_c9
    instance-of v7, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_d8

    .line 392
    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v7}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    .line 395
    :cond_d8
    :goto_d8
    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_16a

    if-eq v6, v7, :cond_16a

    .line 397
    iget-object v9, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/server/emergency/EmergencyAffordanceService;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_12a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sys.radio.mcc"

    const-string v11, "000"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12a

    .line 398
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.oem.intent.action.mcc_changed"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    const-string/jumbo v10, "mcc"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v10, "EmergencyAffordanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast mcc change intent mcc "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v10, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 407
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_12a
    iget-object v9, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 408
    .local v9, "wM":Landroid/net/wifi/WifiManager;
    const-string v10, "EmergencyAffordanceService"

    const-string/jumbo v11, "receive emergency raido mcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_155

    iget-object v10, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 410
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v10, v8, :cond_160

    .line 411
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->isMccChange(I)Z

    move-result v10

    if-eqz v10, :cond_160

    .line 412
    :cond_155
    const-string v10, "EmergencyAffordanceService"

    const-string/jumbo v11, "set country code from radio mcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v9, v6, v2}, Landroid/net/wifi/WifiManager;->setCountryCodeFromMcc(IZ)V

    .line 416
    :cond_160
    const-string/jumbo v10, "sys.radio.mcc"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v9    # "wM":Landroid/net/wifi/WifiManager;
    :cond_16a
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v9

    if-eqz v9, :cond_174

    .line 420
    invoke-direct {p0, v8}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 421
    return v8

    .line 422
    :cond_174
    if-eqz v6, :cond_179

    if-eq v6, v7, :cond_179

    .line 424
    const/4 v3, 0x1

    .line 426
    .end local v5    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v6    # "mcc":I
    :cond_179
    goto/16 :goto_9c

    .line 427
    :cond_17b
    if-eqz v3, :cond_181

    .line 428
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    goto :goto_184

    .line 430
    :cond_181
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    .line 432
    :goto_184
    invoke-direct {p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 433
    return v2
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .registers 11

    .line 279
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    .line 280
    .local v0, "neededBefore":Z
    move v1, v0

    .line 281
    .local v1, "neededNow":Z
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 282
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_27

    .line 284
    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeSubscriptionInfoList is null, return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 286
    return v1

    .line 288
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 289
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    const-string v5, "EmergencyAffordanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    .line 291
    .local v5, "mcc":I
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 292
    const/4 v1, 0x1

    .line 293
    goto :goto_a2

    .line 294
    :cond_5a
    if-eqz v5, :cond_62

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_62

    .line 296
    const/4 v1, 0x0

    .line 298
    :cond_62
    iget-object v6, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "simOperator":Ljava/lang/String;
    const/4 v5, 0x0

    .line 300
    const-string v7, "EmergencyAffordanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz v6, :cond_96

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_96

    .line 302
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 304
    :cond_96
    if-eqz v5, :cond_a1

    .line 305
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 306
    const/4 v1, 0x1

    .line 307
    goto :goto_a2

    .line 310
    :cond_a0
    const/4 v1, 0x0

    .line 313
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "mcc":I
    .end local v6    # "simOperator":Ljava/lang/String;
    :cond_a1
    goto :goto_2b

    .line 315
    :cond_a2
    :goto_a2
    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "neededNow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", neededBefore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 320
    return v1
.end method

.method private isEmergencyAffordanceNeeded()Z
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    monitor-exit v0

    return v1

    .line 203
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isMccChange(I)Z
    .registers 7
    .param p1, "mcc"    # I

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "res":Z
    const-string/jumbo v1, "sys.radio.mcc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "radioMcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 344
    const/4 v0, 0x1

    goto :goto_1f

    .line 346
    :cond_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 347
    const/4 v0, 0x0

    goto :goto_1f

    .line 349
    :cond_1e
    const/4 v0, 0x1

    .line 353
    :goto_1f
    if-eqz v0, :cond_40

    .line 354
    const-string v2, "EmergencyAffordanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMccChange oldMcc =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_40
    return v0
.end method

.method private isOPSoftSimEnable(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 440
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.redteamobile.virtual.softsim"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    .line 445
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_12

    .line 442
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_c
    move-exception v1

    .line 443
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 444
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 446
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v2

    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_12
    if-nez v1, :cond_15

    .line 447
    return v0

    .line 449
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .registers 4
    .param p1, "mcc"    # I

    .line 471
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 463
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScansCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2a

    .line 465
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 467
    :cond_2a
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private onStartPollingCellInfo()V
    .registers 6

    .line 476
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    .line 478
    const-string v1, "EmergencyAffordanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "polling mPollingComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    const/4 v3, 0x6

    if-gt v1, v3, :cond_3a

    .line 480
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->removeMessages(I)V

    .line 481
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 483
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_3d

    .line 484
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStopPollingCellInfo()V

    .line 486
    :goto_3d
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private onStopPollingCellInfo()V
    .registers 3

    .line 490
    const-string v0, "EmergencyAffordanceService"

    const-string/jumbo v1, "onStopPollingCellInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    .line 492
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->removeMessages(I)V

    .line 493
    return-void
.end method

.method private requestCellScan()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .registers 4
    .param p1, "needsAffordance"    # Z

    .line 454
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    .line 456
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .registers 4
    .param p1, "simNeedsEmergencyAffordance"    # Z

    .line 324
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 325
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    .line 327
    nop

    .line 325
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-eq p1, v0, :cond_1b

    .line 330
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    .line 331
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 333
    :cond_1b
    return-void
.end method

.method private simNeededAffordanceBefore()Z
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method private startScanning()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 234
    return-void
.end method

.method private stopScanning()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    const-string v1, "EmergencyAffordanceService"

    const-string/jumbo v2, "stopScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 196
    iput v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private updateEmergencyAffordanceNeeded()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mNetworkNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_34

    :cond_32
    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 176
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_needed"

    .line 178
    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 176
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_4b

    .line 182
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStopPollingCellInfo()V

    .line 186
    :cond_4b
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v1, :cond_52

    .line 187
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 189
    :cond_52
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 212
    const/16 v0, 0x258

    if-ne p1, v0, :cond_5f

    .line 213
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 215
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_20

    .line 216
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 217
    return-void

    .line 219
    :cond_20
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 223
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 224
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 229
    .end local v0    # "thread":Landroid/os/HandlerThread;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_5f
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 208
    return-void
.end method
