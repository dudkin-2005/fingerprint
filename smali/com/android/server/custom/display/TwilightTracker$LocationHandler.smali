.class final Lcom/android/server/custom/display/TwilightTracker$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field final synthetic this$0:Lcom/android/server/custom/display/TwilightTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/custom/display/TwilightTracker;)V
    .locals 2

    .line 156
    iput-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 174
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/custom/display/TwilightTracker;Lcom/android/server/custom/display/TwilightTracker$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;-><init>(Lcom/android/server/custom/display/TwilightTracker;)V

    return-void
.end method

.method private retrieveLocation()V
    .locals 7

    .line 302
    nop

    .line 303
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 304
    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 307
    invoke-static {v2}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 309
    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    .line 311
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 312
    :cond_0
    nop

    .line 314
    move-object v1, v2

    :cond_1
    goto :goto_0

    .line 319
    :cond_2
    if-nez v1, :cond_4

    .line 320
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 322
    const-wide v1, 0x3f71111111111111L    # 0.004166666666666667

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    .line 323
    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-lez v0, :cond_3

    const/16 v0, 0xe10

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    int-to-long v5, v0

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v1, v3

    .line 324
    new-instance v0, Landroid/location/Location;

    const-string v3, "fake"

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 326
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 327
    const v1, 0x48cb9d00    # 417000.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    goto :goto_2

    .line 336
    :cond_4
    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->setLocation(Landroid/location/Location;)V

    .line 337
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 341
    invoke-direct {p0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->updateTwilightState()V

    .line 342
    return-void
.end method

.method private updateTwilightState()V
    .locals 22

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 346
    iget-object v0, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/custom/display/TwilightTracker;->access$500(Lcom/android/server/custom/display/TwilightTracker;Lcom/android/server/custom/display/TwilightTracker$TwilightState;)V

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 351
    new-instance v3, Lcom/android/server/custom/display/SunriseSunsetCalculator;

    iget-object v4, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    .line 352
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/custom/display/SunriseSunsetCalculator;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 354
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 355
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 356
    const/4 v7, -0x1

    const/4 v8, 0x5

    invoke-virtual {v5, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 357
    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 360
    invoke-virtual {v3, v5}, Lcom/android/server/custom/display/SunriseSunsetCalculator;->getOfficialSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 363
    invoke-virtual {v3, v4}, Lcom/android/server/custom/display/SunriseSunsetCalculator;->getOfficialSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 364
    invoke-virtual {v3, v4}, Lcom/android/server/custom/display/SunriseSunsetCalculator;->getOfficialSunsetCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 365
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v5, v8, v18

    const/4 v14, 0x0

    if-ltz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v4, v20

    if-gez v4, :cond_1

    .line 367
    move v4, v7

    goto :goto_0

    .line 365
    :cond_1
    nop

    .line 367
    move v4, v14

    :goto_0
    invoke-virtual {v3, v6}, Lcom/android/server/custom/display/SunriseSunsetCalculator;->getOfficialSunriseCalendarForDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 370
    new-instance v3, Lcom/android/server/custom/display/TwilightTracker$TwilightState;

    xor-int/lit8 v9, v4, 0x1

    move-object v8, v3

    move-wide/from16 v12, v18

    move v4, v14

    move-wide/from16 v14, v20

    move-wide/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Lcom/android/server/custom/display/TwilightTracker$TwilightState;-><init>(ZJJJJ)V

    .line 375
    iget-object v8, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v8, v3}, Lcom/android/server/custom/display/TwilightTracker;->access$500(Lcom/android/server/custom/display/TwilightTracker;Lcom/android/server/custom/display/TwilightTracker$TwilightState;)V

    .line 378
    nop

    .line 379
    const-wide/16 v8, -0x1

    cmp-long v3, v18, v8

    if-eqz v3, :cond_5

    cmp-long v3, v20, v8

    if-nez v3, :cond_2

    goto :goto_1

    .line 384
    :cond_2
    const-wide/32 v8, 0xea60

    .line 386
    cmp-long v3, v1, v20

    if-lez v3, :cond_3

    .line 387
    add-long/2addr v8, v5

    goto :goto_2

    .line 388
    :cond_3
    cmp-long v1, v1, v18

    if-lez v1, :cond_4

    .line 389
    add-long v8, v8, v20

    goto :goto_2

    .line 391
    :cond_4
    add-long v8, v8, v18

    goto :goto_2

    .line 381
    :cond_5
    :goto_1
    const-wide/32 v5, 0x2932e00

    add-long v8, v1, v5

    .line 399
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lineageos.platform.intent.action.UPDATE_TWILIGHT_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    iget-object v2, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 401
    invoke-static {v2}, Lcom/android/server/custom/display/TwilightTracker;->access$600(Lcom/android/server/custom/display/TwilightTracker;)Landroid/content/Context;

    move-result-object v2

    .line 400
    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 402
    iget-object v2, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v2}, Lcom/android/server/custom/display/TwilightTracker;->access$700(Lcom/android/server/custom/display/TwilightTracker;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 403
    iget-object v0, v0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$700(Lcom/android/server/custom/display/TwilightTracker;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 404
    return-void
.end method


# virtual methods
.method public enableLocationUpdates()V
    .locals 1

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 296
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->updateTwilightState()V

    goto/16 :goto_5

    .line 199
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    .line 200
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/android/server/custom/display/TwilightTracker;->access$100(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    .line 201
    iget-object v3, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 208
    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_b

    .line 209
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto/16 :goto_5

    .line 215
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez p1, :cond_3

    .line 218
    return-void

    .line 220
    :cond_3
    iget-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    .line 224
    return-void

    .line 229
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    .line 230
    iget-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {p1}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$200(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 238
    :pswitch_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 239
    invoke-static {p1}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_2

    .line 240
    :catch_0
    move-exception p1

    .line 243
    nop

    .line 245
    move p1, v1

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 246
    iput-boolean v2, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastNetworkRegisterTime:J

    .line 248
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "network"

    const-wide/32 v5, 0x5265c00

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 249
    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$200(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v8

    .line 248
    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 251
    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_5

    .line 252
    iput-boolean v2, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mDidFirstInit:Z

    .line 253
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_5

    .line 254
    invoke-direct {p0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->retrieveLocation()V

    .line 263
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 264
    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v3, "passive"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    goto :goto_3

    .line 265
    :catch_1
    move-exception v0

    .line 268
    nop

    .line 271
    move v0, v1

    :goto_3
    iget-boolean v1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 272
    iput-boolean v2, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    .line 273
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$300(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationManager;

    move-result-object v3

    const-string/jumbo v4, "passive"

    const-wide/16 v5, 0x0

    const v7, 0x469c4000    # 20000.0f

    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    .line 274
    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$400(Lcom/android/server/custom/display/TwilightTracker;)Landroid/location/LocationListener;

    move-result-object v8

    .line 273
    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 277
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_a

    .line 278
    :cond_7
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v3

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    .line 279
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    .line 280
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    goto :goto_4

    .line 281
    :cond_8
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v3, 0xdbba0

    cmp-long v0, v0, v3

    if-lez v0, :cond_9

    .line 282
    iput-wide v3, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    .line 284
    :cond_9
    :goto_4
    iget-wide v0, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLastUpdateInterval:J

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_a
    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez p1, :cond_b

    .line 291
    invoke-direct {p0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->retrieveLocation()V

    .line 299
    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 1

    .line 179
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    .line 192
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method
