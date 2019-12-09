.class public Lcom/android/server/pocket/PocketService;
.super Lcom/android/server/SystemService;
.source "PocketService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pocket/PocketService$PocketServiceWrapper;,
        Lcom/android/server/pocket/PocketService$PocketHandler;,
        Lcom/android/server/pocket/PocketService$PocketObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LIGHT_AMBIENT:I = 0x2

.field private static final LIGHT_POCKET:I = 0x1

.field private static final LIGHT_SENSOR_DELAY:I = 0x61a80

.field private static final LIGHT_UNKNOWN:I = 0x0

.field private static final POCKET_LIGHT_MAX_THRESHOLD:F = 3.0f

.field private static final PROXIMITY_NEGATIVE:I = 0x2

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x61a80

.field private static final PROXIMITY_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/pocket/IPocketCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

.field private mInteractive:Z

.field private mLastLightState:I

.field private mLastProximityState:I

.field private final mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightMaxRange:F

.field private mLightRegistered:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightState:I

.field private mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

.field private mPending:Z

.field private mPocketLockVisible:Z

.field private final mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityMaxRange:F

.field private mProximityRegistered:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityState:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSystemBooted:Z

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/android/server/pocket/PocketService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    .line 132
    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 138
    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    .line 139
    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    .line 389
    new-instance v0, Lcom/android/server/pocket/PocketService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pocket/PocketService$1;-><init>(Lcom/android/server/pocket/PocketService;)V

    iput-object v0, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 402
    new-instance v0, Lcom/android/server/pocket/PocketService$2;

    invoke-direct {v0, p0}, Lcom/android/server/pocket/PocketService$2;-><init>(Lcom/android/server/pocket/PocketService;)V

    iput-object v0, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 149
    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    .line 150
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v0, Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/pocket/PocketService$PocketHandler;-><init>(Lcom/android/server/pocket/PocketService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    .line 153
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 154
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 155
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    iput p1, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    .line 159
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    iput p1, p0, Lcom/android/server/pocket/PocketService;->mLightMaxRange:F

    .line 162
    :cond_1
    new-instance p1, Lcom/android/server/pocket/PocketService$PocketObserver;

    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/pocket/PocketService$PocketObserver;-><init>(Lcom/android/server/pocket/PocketService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    .line 163
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketObserver;->onChange(Z)V

    .line 164
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    invoke-virtual {p1}, Lcom/android/server/pocket/PocketService$PocketObserver;->register()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/pocket/PocketService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleUnregisterTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleSetListeningExternal(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleSetPocketLockVisible(Z)V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/pocket/PocketService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/pocket/PocketService;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/pocket/PocketService;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/pocket/PocketService;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isPocketLockVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/pocket/PocketService;Ljava/io/PrintWriter;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleSystemBooted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->handleDispatchCallbacks()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleAddCallback(Landroid/pocket/IPocketCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleRemoveCallback(Landroid/pocket/IPocketCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pocket/PocketService;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleInteractiveChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleProximitySensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService;->handleLightSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private cleanUpCallbacksLocked(Landroid/pocket/IPocketCallback;)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pocket/IPocketCallback;

    .line 575
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 576
    :cond_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 579
    :cond_2
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchCallbacks()V
    .locals 4

    .line 718
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    .line 719
    iget-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v1, :cond_1

    .line 720
    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    .line 726
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    .line 727
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    .line 728
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 4

    .line 731
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 733
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "POCKET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 735
    const-string v1, "isDeviceInPocket"

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 736
    const-string v1, "interactive"

    iget-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 737
    const-string/jumbo v1, "proximityState"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    const-string v1, "lastProximityState"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    const-string/jumbo v1, "proximityRegistered"

    iget-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 740
    const-string/jumbo v1, "proximityMaxRange"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 741
    const-string v1, "lightState"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v1, "lastLightState"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 743
    const-string v1, "lightRegistered"

    iget-boolean v2, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 744
    const-string v1, "lightMaxRange"

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mLightMaxRange:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 745
    :catch_0
    move-exception v1

    .line 746
    :try_start_1
    sget-object v2, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 749
    nop

    .line 750
    return-void

    .line 748
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    throw v1
.end method

.method private handleAddCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_0
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDispatchCallbacks()V
    .locals 8

    .line 550
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 552
    nop

    .line 553
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 554
    iget-object v5, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/pocket/IPocketCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 557
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v7

    invoke-interface {v5, v7, v2}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 561
    :catch_0
    move-exception v4

    .line 562
    nop

    .line 553
    move v4, v6

    goto :goto_1

    .line 559
    :cond_0
    nop

    .line 563
    move v4, v6

    .line 553
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_1
    if-eqz v4, :cond_2

    .line 566
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/pocket/PocketService;->cleanUpCallbacksLocked(Landroid/pocket/IPocketCallback;)V

    .line 568
    :cond_2
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleInteractiveChanged(Z)V
    .locals 0

    .line 623
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    .line 625
    iget-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz p1, :cond_0

    .line 627
    return-void

    .line 628
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    if-nez p1, :cond_2

    .line 630
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 631
    return-void

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->update()V

    .line 635
    return-void
.end method

.method private handleLightSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 638
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    .line 640
    iget v1, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    .line 648
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 650
    :try_start_0
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    goto :goto_3

    .line 669
    :catchall_0
    move-exception p1

    goto :goto_7

    .line 665
    :catch_0
    move-exception p1

    goto :goto_5

    .line 651
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 655
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    .line 656
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    .line 663
    move p1, v3

    goto :goto_0

    .line 656
    :cond_2
    nop

    .line 663
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    :goto_1
    iput v3, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    goto :goto_3

    .line 653
    :cond_4
    :goto_2
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :goto_3
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result p1

    if-eq v0, p1, :cond_5

    .line 670
    :goto_4
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    goto :goto_6

    .line 665
    :goto_5
    nop

    .line 666
    :try_start_1
    sget-object v2, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: something went wrong, exception caught, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLightState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result p1

    if-eq v0, p1, :cond_5

    goto :goto_4

    .line 673
    :cond_5
    :goto_6
    return-void

    .line 669
    :goto_7
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 670
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    :cond_6
    throw p1
.end method

.method private handleProximitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 676
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    .line 678
    iget v1, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    iput v1, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 686
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 688
    :try_start_0
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    goto :goto_3

    .line 706
    :catchall_0
    move-exception p1

    goto :goto_7

    .line 702
    :catch_0
    move-exception p1

    goto :goto_5

    .line 689
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 693
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    .line 694
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iget v2, p0, Lcom/android/server/pocket/PocketService;->mProximityMaxRange:F

    cmpg-float p1, p1, v2

    const/4 v2, 0x1

    if-gez p1, :cond_2

    .line 700
    move p1, v2

    goto :goto_0

    .line 694
    :cond_2
    nop

    .line 700
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    :goto_1
    iput v2, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    goto :goto_3

    .line 691
    :cond_4
    :goto_2
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_3
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result p1

    if-eq v0, p1, :cond_5

    .line 707
    :goto_4
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    goto :goto_6

    .line 702
    :goto_5
    nop

    .line 703
    :try_start_1
    sget-object v2, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: something went wrong, exception caught, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result p1

    if-eq v0, p1, :cond_5

    goto :goto_4

    .line 710
    :cond_5
    :goto_6
    return-void

    .line 706
    :goto_7
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 707
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    :cond_6
    throw p1
.end method

.method private handleRemoveCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleSetListeningExternal(Z)V
    .locals 1

    .line 591
    if-eqz p1, :cond_0

    .line 595
    iget-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-nez p1, :cond_1

    .line 596
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->registerSensorListeners()V

    goto :goto_0

    .line 599
    :cond_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 602
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->dispatchCallbacks()V

    .line 603
    return-void
.end method

.method private handleSetPocketLockVisible(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mPocketLockVisible:Z

    .line 584
    return-void
.end method

.method private handleSystemBooted()V
    .locals 2

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemBooted:Z

    .line 540
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 542
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    iget-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 544
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 547
    :cond_0
    return-void
.end method

.method private handleSystemReady()V
    .locals 2

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mSystemReady:Z

    .line 526
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 528
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 529
    iget-boolean v1, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 530
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPending:Z

    .line 533
    :cond_0
    return-void
.end method

.method private handleUnregisterTimeout()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 714
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 715
    return-void
.end method

.method private isDeviceInPocket()Z
    .locals 3

    .line 416
    iget v0, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 417
    iget v0, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 420
    :cond_1
    iget v0, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private isPocketLockVisible()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mPocketLockVisible:Z

    return v0
.end method

.method private registerSensorListeners()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->startListeningForProximity()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->startListeningForLight()V

    .line 448
    return-void
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eq p1, v0, :cond_0

    .line 425
    iput-boolean p1, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    .line 426
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->update()V

    .line 429
    :cond_0
    return-void
.end method

.method private startListeningForLight()V
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 498
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect light sensor, sensor is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    if-nez v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x61a80

    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    .line 507
    :cond_1
    return-void
.end method

.method private startListeningForProximity()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 465
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect proximity sensor, sensor is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mProximitySensor:Landroid/hardware/Sensor;

    const v3, 0x61a80

    iget-object v4, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    .line 474
    :cond_1
    return-void
.end method

.method private stopListeningForLight()V
    .locals 3

    .line 514
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLastLightState:I

    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLightState:I

    .line 516
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 517
    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mLightRegistered:Z

    .line 519
    :cond_0
    return-void
.end method

.method private stopListeningForProximity()V
    .locals 3

    .line 481
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    iput v0, p0, Lcom/android/server/pocket/PocketService;->mLastProximityState:I

    .line 483
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 484
    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mProximityRegistered:Z

    .line 486
    :cond_0
    return-void
.end method

.method private unregisterSensorListeners()V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->stopListeningForProximity()V

    .line 452
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->stopListeningForLight()V

    .line 453
    return-void
.end method

.method private update()V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mInteractive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pocket/PocketService$PocketHandler;->removeMessages(I)V

    .line 441
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->registerSensorListeners()V

    goto :goto_1

    .line 433
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService;->mEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->isDeviceInPocket()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    return-void

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 443
    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 282
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/pocket/PocketService;->mProximityState:I

    .line 283
    iget-object v2, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 284
    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 285
    iget-object v3, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 287
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pocket/IPocketCallback;

    const/4 v4, 0x2

    invoke-interface {v3, v1, v4}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :goto_1
    goto :goto_2

    .line 290
    :catch_0
    move-exception v3

    .line 291
    :try_start_2
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string v5, "Failed to invoke sendPocketState: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 288
    :catch_1
    move-exception v3

    .line 289
    sget-object v4, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    const-string v5, "Death object while invoking sendPocketState: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 284
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/server/pocket/PocketService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 296
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    invoke-direct {p0}, Lcom/android/server/pocket/PocketService;->unregisterSensorListeners()V

    .line 298
    iget-object v0, p0, Lcom/android/server/pocket/PocketService;->mObserver:Lcom/android/server/pocket/PocketService$PocketObserver;

    invoke-virtual {v0}, Lcom/android/server/pocket/PocketService$PocketObserver;->unregister()V

    .line 299
    return-void

    .line 296
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 3

    .line 261
    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 269
    sget-object v0, Lcom/android/server/pocket/PocketService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-handled boot phase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    .line 267
    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/android/server/pocket/PocketService;->mHandler:Lcom/android/server/pocket/PocketService$PocketHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendEmptyMessage(I)Z

    .line 264
    nop

    .line 272
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 276
    const-string/jumbo v0, "pocket"

    new-instance v1, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;-><init>(Lcom/android/server/pocket/PocketService;Lcom/android/server/pocket/PocketService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pocket/PocketService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    return-void
.end method
