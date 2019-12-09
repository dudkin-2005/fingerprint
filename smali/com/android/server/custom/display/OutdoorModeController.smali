.class public Lcom/android/server/custom/display/OutdoorModeController;
.super Lcom/android/server/custom/display/LiveDisplayFeature;
.source "OutdoorModeController.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# static fields
.field private static final SENSOR_WINDOW_MS:I = 0xbb8


# instance fields
.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultOutdoorLux:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

.field private mIsOutdoor:Z

.field private mIsSensorEnabled:Z

.field private final mListener:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

.field private mLuxObserver:Lcom/android/server/custom/display/AmbientLuxObserver;

.field private final mOutdoorLuxHysteresis:I

.field private final mSelfManaged:Z

.field private mTwilight:Lcom/android/server/twilight/TwilightState;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private final mUseOutdoorMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 234
    new-instance p1, Lcom/android/server/custom/display/OutdoorModeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/custom/display/OutdoorModeController$1;-><init>(Lcom/android/server/custom/display/OutdoorModeController;)V

    iput-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mListener:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    .line 64
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    .line 65
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    .line 66
    iget-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    invoke-virtual {p1}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->isSunlightEnhancementSelfManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    .line 68
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mDefaultOutdoorLux:I

    .line 70
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    .line 72
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1120040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    .line 75
    iput-object p2, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHandler:Landroid/os/Handler;

    .line 76
    const-class p1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/display/OutdoorModeController;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsOutdoor:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/custom/display/OutdoorModeController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsOutdoor:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/custom/display/OutdoorModeController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilight:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilight:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized updateOutdoorMode()V
    .locals 3

    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 197
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateSensorState()V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->getMode()I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-boolean v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v1, :cond_1

    .line 218
    goto :goto_0

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsOutdoor:Z

    if-eqz v1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isNight()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    goto :goto_0

    .line 230
    :cond_2
    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->set(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_3
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSensorState()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/custom/display/AmbientLuxObserver;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->getMode()I

    .line 177
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isNight()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    const/4 v0, 0x1

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsSensorEnabled:Z

    if-eq v1, v0, :cond_3

    .line 184
    iput-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsSensorEnabled:Z

    .line 185
    iget-object v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/custom/display/AmbientLuxObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mListener:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/custom/display/AmbientLuxObserver;->setTransitionListener(Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_3
    monitor-exit p0

    return-void

    .line 166
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 147
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 148
    const-string v0, "OutdoorModeController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultOutdoorLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mDefaultOutdoorLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOutdoorLuxHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 154
    const-string v0, "  OutdoorModeController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsOutdoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsOutdoor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hardware state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 v2, 0x10

    .line 159
    invoke-virtual {v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->dump(Ljava/io/PrintWriter;)V

    .line 162
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_0

    .line 112
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 115
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    return p1
.end method

.method getDefaultAutoOutdoorMode()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method isAutomaticOutdoorModeEnabled()Z
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_0

    const-string v0, "display_auto_outdoor_mode"

    .line 261
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v1

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/android/server/custom/display/OutdoorModeController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateSensorState()V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/custom/display/OutdoorModeController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mIsOutdoor:Z

    .line 136
    iget-object v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHardware:Lcom/android/internal/custom/hardware/LineageHardwareManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->set(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateOutdoorMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .locals 7

    .line 81
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/android/server/custom/display/AmbientLuxObserver;

    iget-object v2, p0, Lcom/android/server/custom/display/OutdoorModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mDefaultOutdoorLux:I

    int-to-float v4, v1

    iget v1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    int-to-float v5, v1

    const/16 v6, 0xbb8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/custom/display/AmbientLuxObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;FFI)V

    iput-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/custom/display/AmbientLuxObserver;

    .line 93
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "display_auto_outdoor_mode"

    .line 94
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/OutdoorModeController;->registerSettings([Landroid/net/Uri;)V

    .line 95
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 100
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateOutdoorMode()V

    .line 101
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/server/custom/display/OutdoorModeController;->updateOutdoorMode()V

    .line 121
    return-void
.end method

.method setAutomaticOutdoorModeEnabled(Z)Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/android/server/custom/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_0

    .line 252
    const/4 p1, 0x0

    return p1

    .line 254
    :cond_0
    const-string v0, "display_auto_outdoor_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/custom/display/OutdoorModeController;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const/4 p1, 0x1

    return p1
.end method
