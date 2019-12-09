.class Lcom/android/server/location/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(IDDDIIII)Z
    .locals 0

    .line 19
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(II)Z
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(I)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$addCircularHardwareGeofence$1(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)Ljava/lang/Boolean;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move v13, p1

    .line 92
    iget-object v1, v0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move v2, v13

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V

    .line 97
    iput v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    .line 98
    move-wide/from16 v3, p2

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    .line 99
    move-wide/from16 v3, p4

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    .line 100
    move-wide/from16 v3, p6

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    .line 101
    move/from16 v3, p8

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    .line 102
    move/from16 v3, p9

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 103
    move/from16 v3, p10

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    .line 104
    move/from16 v3, p11

    iput v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    .line 105
    iget-object v0, v0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$pauseHardwareGeofence$3(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 132
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$removeHardwareGeofence$2(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$resumeHardwareGeofence$4(Lcom/android/server/location/GnssGeofenceProvider;II)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 144
    iput p2, p1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 147
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$resumeIfStarted$0(Lcom/android/server/location/GnssGeofenceProvider;)V
    .locals 14

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 59
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v3, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v4, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v6, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v8, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v10, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v11, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v12, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v13, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v2

    .line 64
    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v1, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v2, v1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private runOnHandlerThread(Ljava/util/concurrent/Callable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 73
    iget-object p1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    const-string v0, "GnssGeofenceProvider"

    const-string v1, "Failed running callable."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 14

    .line 91
    new-instance v13, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)V

    move-object v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;-><init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 1

    .line 124
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result p1

    return p1
.end method

.method public removeHardwareGeofence(I)Z
    .locals 1

    .line 113
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result p1

    return p1
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 1

    .line 138
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;-><init>(Lcom/android/server/location/GnssGeofenceProvider;II)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result p1

    return p1
.end method

.method resumeIfStarted()V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
