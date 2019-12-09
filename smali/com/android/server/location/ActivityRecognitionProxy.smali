.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .locals 11

    move-object v0, p0

    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    move v1, p3

    iput-boolean v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    .line 51
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 53
    new-instance v8, Lcom/android/server/location/ActivityRecognitionProxy$1;

    invoke-direct {v8, v0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    .line 61
    new-instance v10, Lcom/android/server/ServiceWatcher;

    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "com.android.location.service.ActivityRecognitionProvider"

    move-object v1, v10

    move-object v2, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v10, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ActivityRecognitionProxy;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/location/ActivityRecognitionProxy;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    return p0
.end method

.method private bindProvider()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/ActivityRecognitionProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/ActivityRecognitionProxy$2;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string v0, "ActivityRecognitionProxy"

    const-string v1, "Null binder found on connection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .locals 9

    .line 85
    new-instance v8, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    .line 95
    iget-object p0, v8, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result p0

    if-nez p0, :cond_0

    .line 96
    const-string p0, "ActivityRecognitionProxy"

    const-string p1, "ServiceWatcher could not start."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    return-object v8
.end method
