.class public Lcom/oneplus/server/OIMCUtil;
.super Ljava/lang/Object;
.source "OIMCUtil.java"


# static fields
.field static final DEBUG:Z

.field private static final HAS_HW_KEYS:Z

.field static final TAG:Ljava/lang/String; = "OIMC"

.field private static sESportMode:Lcom/android/server/ESportMode;

.field private static sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

.field private static sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

.field private static sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

.field private static sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

.field private static sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

.field private static sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

.field private static sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

.field private static sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

.field private static sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    .line 44
    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->HAS_HW_KEYS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOIMCRulesForSwitch(Lcom/oneplus/server/OIMCService;I)V
    .registers 6
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;
    .param p1, "userId"    # I

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 327
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_18

    .line 328
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 329
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    .line 332
    :cond_18
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    .line 333
    .local v0, "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    if-eqz v0, :cond_21

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->addOrRemoveRule(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 338
    .end local v0    # "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    :cond_21
    goto :goto_3a

    .line 336
    :catch_22
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 83
    const-string v0, "OIMC"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 87
    const-string v0, "OIMC"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return-void
.end method

.method public static registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V
    .registers 7
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    .line 108
    :try_start_0
    new-instance v0, Lcom/oneplus/server/ColorManager;

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/server/ColorManager;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "mColorManager":Lcom/oneplus/server/ColorManager;
    const-string v1, "GrayColor"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 110
    const-string v1, "ColorBalance"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 111
    const-string v1, "ColorDisable"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 115
    const-string v1, "HeadsUpNotification"

    const-string/jumbo v2, "op_oimc_func_disable_headsup"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    const-string v1, "HeadsUpNotificationBreath"

    const-string/jumbo v2, "op_oimc_func_disable_headsup_breath"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v1

    .line 123
    .local v1, "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    if-eqz v1, :cond_3a

    .line 124
    const-string v2, "WiFiBackgroudNetLimit"

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 130
    :cond_3a
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/util/OemSceneCallBlocker;->getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneCallBlocker;

    move-result-object v2

    sput-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    .line 131
    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    if-eqz v2, :cond_4f

    .line 132
    const-string v2, "NotifyFor3PtyCallsBlocking"

    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 139
    :cond_4f
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OemSceneAutoBrightnessController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAutoBrightnessController;

    move-result-object v2

    sput-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 140
    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    if-eqz v2, :cond_64

    .line 141
    const-string v2, "TurnOffAutoBacklight"

    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 147
    :cond_64
    new-array v2, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;

    move-result-object v2

    sput-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    .line 149
    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v2, :cond_86

    .line 150
    const-string v2, "KeyBlocking"

    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 157
    :cond_86
    const-string v2, "AnswerWithoutUI"

    const-string/jumbo v4, "op_oimc_func_answer_without_ui"

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v2

    sput-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 160
    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v2}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ESportMode;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportMode;

    move-result-object v2

    sput-object v2, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    .line 165
    sget-object v2, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    if-eqz v2, :cond_b2

    .line 166
    const-string v2, "ESportMode"

    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 181
    :cond_b2
    const-string v2, "FingerprintGestureLimit"

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v4

    .line 181
    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 185
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v2

    .line 186
    .local v2, "mOnePlusRamBoostManager":Lcom/android/server/am/OnePlusRamBoostManager;
    if-eqz v2, :cond_ca

    .line 187
    const-string v4, "OnePlusRamboost"

    invoke-virtual {p0, v4, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 192
    :cond_ca
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OemSceneVibrationController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;

    move-result-object v4

    sput-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    .line 193
    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    if-eqz v4, :cond_e3

    .line 194
    const-string v4, "AllowWhiteVibration"

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    .line 195
    invoke-virtual {v5}, Lcom/android/server/OemSceneVibrationController;->getAllowWhiteVibration()Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    move-result-object v5

    .line 194
    invoke-virtual {p0, v4, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 200
    :cond_e3
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;

    move-result-object v4

    sput-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    .line 201
    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    if-eqz v4, :cond_fc

    .line 202
    const-string v4, "AllowWhiteActivity"

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    .line 203
    invoke-virtual {v5}, Lcom/android/server/OemSceneActivityController;->getAllowWhiteActivity()Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    move-result-object v5

    .line 202
    invoke-virtual {p0, v4, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 208
    :cond_fc
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OemSceneLightsController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneLightsController;

    move-result-object v4

    sput-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    .line 209
    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    if-eqz v4, :cond_115

    .line 210
    const-string v4, "BreathModeLedController"

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    .line 211
    invoke-virtual {v5}, Lcom/android/server/OemSceneLightsController;->getBreathModeLedController()Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    move-result-object v5

    .line 210
    invoke-virtual {p0, v4, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 216
    :cond_115
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OemSceneFloatWindowController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneFloatWindowController;

    move-result-object v4

    sput-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    .line 217
    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    if-eqz v4, :cond_12e

    .line 218
    const-string v4, "FloatWindowController"

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    .line 219
    invoke-virtual {v5}, Lcom/android/server/OemSceneFloatWindowController;->getFloatWindowController()Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    move-result-object v5

    .line 218
    invoke-virtual {p0, v4, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 224
    :cond_12e
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OemSceneAudioController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAudioController;

    move-result-object v4

    sput-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    .line 225
    sget-object v4, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    if-eqz v4, :cond_147

    .line 226
    const-string v4, "AudioProcessesController"

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    .line 227
    invoke-virtual {v5}, Lcom/android/server/OemSceneAudioController;->getAudioProcessesController()Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    move-result-object v5

    .line 226
    invoke-virtual {p0, v4, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    .line 232
    :cond_147
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v4

    .line 233
    .local v4, "brickModeObserver":Lcom/oneplus/scene/OimcBrickModeObserver;
    if-eqz v4, :cond_152

    .line 234
    const-string v5, "BrickModeObserver"

    invoke-virtual {p0, v5, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_152} :catch_153

    .line 239
    .end local v0    # "mColorManager":Lcom/oneplus/server/ColorManager;
    .end local v1    # "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    .end local v2    # "mOnePlusRamBoostManager":Lcom/android/server/am/OnePlusRamBoostManager;
    .end local v4    # "brickModeObserver":Lcom/oneplus/scene/OimcBrickModeObserver;
    :cond_152
    goto :goto_16b

    .line 237
    :catch_153
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCFunctions error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16b
    return-void
.end method

.method public static registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V
    .registers 5
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    .line 246
    :try_start_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 247
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    .line 250
    :cond_a
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_13

    .line 251
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneButtonController;->updateFunctionRule(I)V

    .line 254
    :cond_13
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 255
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_2f

    .line 256
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    .line 257
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    .line 261
    :cond_2f
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    .line 262
    .local v0, "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->isInitFunc()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 263
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 268
    :cond_40
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 269
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 270
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 271
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 272
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 273
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 276
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_ESportMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 279
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 283
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 291
    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 295
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteVibration:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 299
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteActivity:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 303
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_BreathModeLedController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 307
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_FloatWindowController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 311
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_AudioProcessesController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 314
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Brick_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    .line 318
    .end local v0    # "mOemSceneWiFiBoostController":Lcom/android/server/am/OemSceneWiFiBoostController;
    goto :goto_a9

    .line 316
    :catch_91
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a9
    return-void
.end method

.method public static toFuncAction(Ljava/lang/String;)I
    .registers 6
    .param p0, "action"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c07cbe

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_21

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_16

    goto :goto_36

    :cond_16
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v3

    goto :goto_37

    :cond_21
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_37

    :cond_2c
    const-string v0, "config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v0, v4

    :goto_37
    packed-switch v0, :pswitch_data_40

    .line 99
    return v4

    .line 97
    :pswitch_3b
    const/4 v0, 0x3

    return v0

    .line 95
    :pswitch_3d
    return v2

    .line 93
    :pswitch_3e
    return v3

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3b
    .end packed-switch
.end method
