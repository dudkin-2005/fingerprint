.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private mBatteryFastChargeARGB:I

.field private mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private final mNotificationLight:Lcom/android/server/lights/Light;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .line 1320
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    new-instance p1, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 1289
    new-instance p1, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1321
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1323
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1326
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1328
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e007a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1330
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0076

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1332
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1334
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0077

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1338
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x508000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    .line 1341
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1342
    .local p1, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1347
    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/BatteryService$Led;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .line 1259
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .line 1259
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setLedColors(III)V
    .registers 7
    .param p1, "batteryLowARGB"    # I
    .param p2, "batteryMediumARGB"    # I
    .param p3, "batteryFullARGB"    # I

    .line 1310
    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1311
    iput p2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1312
    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1313
    const-string v0, "BatteryLed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatteryLowARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBatteryMediumARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBatteryFullARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void
.end method

.method public updateLightsLocked()V
    .registers 8

    .line 1355
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1356
    return-void

    .line 1359
    :cond_9
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLowHint:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_93

    .line 1365
    :cond_1b
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1366
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1375
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDefLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)I

    move-result v2

    const/4 v3, 0x2

    if-gt v0, v2, :cond_65

    .line 1377
    if-ne v1, v3, :cond_49

    .line 1379
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFastChargeStatus:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    goto :goto_45

    .line 1380
    :cond_43
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1379
    :goto_45
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_92

    .line 1385
    :cond_49
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_53

    .line 1386
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1387
    return-void

    .line 1391
    :cond_53
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1394
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_92

    .line 1397
    :cond_65
    const/4 v2, 0x5

    if-eq v1, v3, :cond_71

    if-ne v1, v2, :cond_6b

    goto :goto_71

    .line 1428
    :cond_6b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_92

    .line 1408
    :cond_71
    :goto_71
    if-eq v1, v2, :cond_8b

    const/16 v2, 0x63

    if-le v0, v2, :cond_78

    goto :goto_8b

    .line 1422
    :cond_78
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFastChargeStatus:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    goto :goto_87

    .line 1423
    :cond_85
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1422
    :goto_87
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_92

    .line 1415
    :cond_8b
    :goto_8b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 1430
    :goto_92
    return-void

    .line 1360
    .end local v0    # "level":I
    .end local v1    # "status":I
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1361
    return-void
.end method
