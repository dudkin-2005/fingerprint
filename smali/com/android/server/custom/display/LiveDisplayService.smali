.class public Lcom/android/server/custom/display/LiveDisplayService;
.super Lcom/android/server/SystemService;
.source "LiveDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/display/LiveDisplayService$State;
    }
.end annotation


# static fields
.field static ALL_CHANGED:I = 0x0

.field static DISPLAY_CHANGED:I = 0x0

.field static MODE_CHANGED:I = 0x0

.field private static final SERVICE_TYPE_DUMMY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCTC:Lcom/android/server/custom/display/ColorTemperatureController;

.field private mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

.field private mConfig:Lcom/android/internal/custom/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/custom/display/LiveDisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mOMC:Lcom/android/server/custom/display/OutdoorModeController;

.field private mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

.field private final mState:Lcom/android/server/custom/display/LiveDisplayService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/android/server/custom/display/LiveDisplayService;->MODE_CHANGED:I

    .line 93
    const/4 v0, 0x2

    sput v0, Lcom/android/server/custom/display/LiveDisplayService;->DISPLAY_CHANGED:I

    .line 94
    const/16 v0, 0xff

    sput v0, Lcom/android/server/custom/display/LiveDisplayService;->ALL_CHANGED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/android/server/custom/display/LiveDisplayService$State;

    invoke-direct {v0}, Lcom/android/server/custom/display/LiveDisplayService$State;-><init>()V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    .line 206
    new-instance v0, Lcom/android/server/custom/display/LiveDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/LiveDisplayService$2;-><init>(Lcom/android/server/custom/display/LiveDisplayService;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    .line 303
    new-instance v0, Lcom/android/server/custom/display/LiveDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/LiveDisplayService$3;-><init>(Lcom/android/server/custom/display/LiveDisplayService;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 327
    new-instance v0, Lcom/android/server/custom/display/LiveDisplayService$4;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/LiveDisplayService$4;-><init>(Lcom/android/server/custom/display/LiveDisplayService;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 120
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    .line 123
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "LiveDisplay"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 125
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 126
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/display/LiveDisplayService;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/LiveDisplayService$State;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/internal/custom/hardware/LiveDisplayConfig;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mConfig:Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/OutdoorModeController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mOMC:Lcom/android/server/custom/display/OutdoorModeController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/PictureAdjustmentController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/custom/display/LiveDisplayService;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/server/custom/display/LiveDisplayService;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/custom/display/LiveDisplayService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/LiveDisplayService;->updateFeatures(I)V

    return-void
.end method

.method private isScreenOn()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 355
    :cond_0
    return v1
.end method

.method private updateFeatures(I)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/custom/display/LiveDisplayService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/custom/display/LiveDisplayService$1;-><init>(Lcom/android/server/custom/display/LiveDisplayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1

    .line 347
    nop

    .line 348
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget v0, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mMode:I

    if-eq p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iput p1, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mMode:I

    .line 350
    sget p1, Lcom/android/server/custom/display/LiveDisplayService;->MODE_CHANGED:I

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/LiveDisplayService;->updateFeatures(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 12

    .line 136
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 137
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x112009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 140
    new-instance v0, Lcom/android/server/custom/display/DisplayHardwareController;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/custom/display/DisplayHardwareController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 141
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/android/server/custom/display/ColorTemperatureController;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/custom/display/ColorTemperatureController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/custom/display/DisplayHardwareController;)V

    iput-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mCTC:Lcom/android/server/custom/display/ColorTemperatureController;

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mCTC:Lcom/android/server/custom/display/ColorTemperatureController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    new-instance p1, Lcom/android/server/custom/display/OutdoorModeController;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/android/server/custom/display/OutdoorModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mOMC:Lcom/android/server/custom/display/OutdoorModeController;

    .line 149
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mOMC:Lcom/android/server/custom/display/OutdoorModeController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lcom/android/server/custom/display/PictureAdjustmentController;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/android/server/custom/display/PictureAdjustmentController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    .line 152
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 156
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/custom/display/LiveDisplayFeature;

    .line 158
    invoke-virtual {v0, v2}, Lcom/android/server/custom/display/LiveDisplayFeature;->getCapabilities(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 161
    :cond_1
    goto :goto_0

    .line 163
    :cond_2
    new-instance p1, Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mOMC:Lcom/android/server/custom/display/OutdoorModeController;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/custom/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultAutoContrast()Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 165
    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultCABC()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDHC:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->getDefaultColorEnhancement()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mPAC:Lcom/android/server/custom/display/PictureAdjustmentController;

    .line 168
    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v11

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/custom/hardware/LiveDisplayConfig;-><init>(Ljava/util/BitSet;ZZZZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mConfig:Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/custom/display/LiveDisplayService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 173
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 174
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/custom/display/LiveDisplayService$State;->mScreenOn:Z

    .line 177
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    .line 178
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    .line 181
    invoke-virtual {p1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    iput-boolean p1, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 183
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mState:Lcom/android/server/custom/display/LiveDisplayService$State;

    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    iput v0, p1, Lcom/android/server/custom/display/LiveDisplayService$State;->mMode:I

    .line 184
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p1, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 187
    :goto_2
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 188
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/custom/display/LiveDisplayFeature;

    invoke-virtual {p1}, Lcom/android/server/custom/display/LiveDisplayFeature;->start()V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    :cond_4
    sget p1, Lcom/android/server/custom/display/LiveDisplayService;->ALL_CHANGED:I

    invoke-direct {p0, p1}, Lcom/android/server/custom/display/LiveDisplayService;->updateFeatures(I)V

    .line 193
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 131
    const-string v0, "lineagelivedisplay"

    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/custom/display/LiveDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 132
    return-void
.end method
