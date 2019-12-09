.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final DEFAULT_MIN_INTERVAL_MS:J = 0x1b7740L

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mEffectiveMinIntervalMs:J

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 121
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 123
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 124
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 125
    const-string v0, "GeofenceManager"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    new-instance p1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {p1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    .line 127
    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 128
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    .line 129
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateMinInterval()V

    .line 130
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "location_background_throttle_proximity_alert_interval_ms"

    .line 131
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Lcom/android/server/location/GeofenceManager$1;

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/location/GeofenceManager$1;-><init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V

    .line 130
    const/4 v2, -0x1

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateMinInterval()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .locals 6

    .line 247
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    goto :goto_0

    .line 248
    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 253
    :cond_1
    if-nez v0, :cond_2

    .line 254
    return-object v1

    .line 258
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 259
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0x45d964b800L

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 260
    return-object v1

    .line 264
    :cond_3
    return-object v0
.end method

.method private removeExpiredFencesLocked()V
    .locals 5

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 222
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 223
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GeofenceState;

    .line 225
    iget-wide v3, v3, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 228
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 234
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    .line 236
    :cond_0
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9

    .line 402
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 404
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 406
    invoke-static {v0}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 404
    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    .line 407
    :catch_0
    move-exception p2

    .line 408
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    .line 409
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 412
    :goto_0
    return-void
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 3

    .line 382
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntentEnter: pendingIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 387
    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 3

    .line 392
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntentExit: pendingIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method private updateFences()V
    .locals 18

    .line 275
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 276
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 278
    iget-object v3, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, v0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v5

    .line 290
    nop

    .line 291
    nop

    .line 292
    iget-object v6, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v9, 0x1

    move v10, v4

    move-wide v11, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/GeofenceState;

    .line 293
    iget-object v14, v0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v15, v13, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 294
    sget-boolean v14, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v14, :cond_1

    .line 295
    const-string v14, "GeofenceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipping geofence processing for blacklisted app: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    :cond_0
    iget v4, v13, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v4

    .line 302
    if-ltz v4, :cond_2

    .line 303
    iget-object v4, v0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v14, v13, Lcom/android/server/location/GeofenceState;->mUid:I

    iget-object v15, v13, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v9, v14, v15}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    sget-boolean v4, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v4, :cond_1

    .line 306
    const-string v4, "GeofenceManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping geofence processing for no op app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v13, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 313
    :cond_2
    nop

    .line 314
    if-eqz v5, :cond_5

    .line 315
    invoke-virtual {v13, v5}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v4

    .line 316
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_3

    .line 317
    iget-object v10, v13, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_3
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 320
    iget-object v4, v13, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v13

    .line 326
    cmpg-double v4, v13, v11

    if-gez v4, :cond_5

    .line 327
    nop

    .line 330
    move-wide v11, v13

    .line 292
    :cond_5
    move v10, v9

    goto :goto_1

    .line 333
    :cond_6
    if-eqz v10, :cond_a

    .line 337
    if-eqz v5, :cond_7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_7

    .line 338
    const-wide v6, 0x415b774000000000L    # 7200000.0

    iget-wide v13, v0, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v15

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v15

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-long v6, v6

    goto :goto_2

    .line 341
    :cond_7
    iget-wide v6, v0, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    .line 343
    :goto_2
    iget-boolean v4, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v4, :cond_8

    iget-wide v10, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    cmp-long v4, v10, v6

    if-eqz v4, :cond_9

    .line 344
    :cond_8
    iput-boolean v9, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 345
    iput-wide v6, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 346
    iput-object v5, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 348
    new-instance v4, Landroid/location/LocationRequest;

    invoke-direct {v4}, Landroid/location/LocationRequest;-><init>()V

    .line 349
    invoke-virtual {v4, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 350
    iget-object v6, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v7, v0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v7}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v6, v4, v0, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 352
    :cond_9
    goto :goto_3

    .line 354
    :cond_a
    iget-boolean v4, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v4, :cond_b

    .line 355
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    .line 356
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    .line 357
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 359
    iget-object v4, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 363
    :cond_b
    :goto_3
    sget-boolean v4, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v4, :cond_c

    .line 364
    const-string v4, "GeofenceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFences: location="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mFences.size()="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    .line 365
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mReceivingLocationUpdates="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mLocationUpdateInterval="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mLastLocationUpdate="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 374
    invoke-direct {v0, v3}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    .line 375
    goto :goto_4

    .line 376
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 377
    invoke-direct {v0, v2}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    .line 378
    goto :goto_5

    .line 379
    :cond_e
    return-void

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateMinInterval()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GeofenceManager;->mEffectiveMinIntervalMs:J

    .line 151
    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v9, p2

    move-object v10, p3

    .line 155
    sget-boolean v1, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "GeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFence: request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", geofence="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    move-object v3, p1

    move/from16 v6, p5

    move-object/from16 v7, p6

    :goto_0
    new-instance v11, Lcom/android/server/location/GeofenceState;

    .line 161
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v3

    move-object v1, v11

    move-object v2, v9

    move/from16 v5, p4

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 162
    iget-object v1, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 165
    iget-object v3, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GeofenceState;

    .line 166
    iget-object v4, v3, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v9, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    goto :goto_2

    .line 164
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 172
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {v0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 449
    const-string v0, "  Geofences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    .line 452
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 453
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 454
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 455
    iget-object v1, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v1}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 456
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 457
    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v1, :cond_0

    .line 419
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    .line 424
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 425
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {p1, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    goto :goto_0

    .line 427
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    .line 429
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    .line 431
    return-void

    .line 429
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 440
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 437
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 446
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 434
    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4

    .line 178
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFence: fence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    .line 186
    iget-object v3, v2, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    if-nez p1, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 193
    :cond_1
    iget-object v2, v2, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 198
    :cond_2
    :goto_1
    goto :goto_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 3

    .line 204
    sget-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFence: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GeofenceState;

    .line 212
    iget-object v2, v2, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 215
    :cond_1
    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method