.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 69
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationBasedCountryDetector;
    .param p1, "x1"    # Landroid/location/Location;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    monitor-enter p0

    .line 242
    if-nez p1, :cond_b

    .line 243
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 244
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "location":Landroid/location/Location;
    :catchall_9
    move-exception p1

    goto :goto_24

    .line 246
    .restart local p1    # "location":Landroid/location/Location;
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_9

    if-eqz v0, :cond_11

    monitor-exit p0

    return-void

    .line 247
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 263
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_9

    .line 264
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "location":Landroid/location/Location;
    :goto_24
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    throw p1
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 7

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_56

    .line 173
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 175
    .local v1, "totalProviders":I
    if-lez v1, :cond_4b

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_35

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 180
    new-instance v4, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 198
    .local v4, "listener":Landroid/location/LocationListener;
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 177
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "listener":Landroid/location/LocationListener;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 203
    .end local v2    # "i":I
    :cond_35
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 204
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v4

    .line 204
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_52

    .line 216
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 218
    :goto_52
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_5c

    monitor-exit p0

    return-object v2

    .line 170
    .end local v0    # "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "totalProviders":I
    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5c

    .line 168
    :catchall_5c
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    throw v0
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "country":Ljava/lang/String;
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "geoCoder":Landroid/location/Geocoder;
    nop

    .line 80
    :try_start_9
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 82
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_29} :catch_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2b

    move-object v0, v3

    .line 90
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_2a
    :goto_2a
    goto :goto_46

    .line 88
    :catch_2b
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "Exception occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_46

    .line 86
    :catch_34
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "IllegalArgumentException occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2a

    .line 84
    :catch_3d
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "LocationBasedCountryDetector"

    const-string v4, "IOException occurs when getting country from location"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2a

    .line 91
    :goto_46
    return-object v0
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 12

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 131
    .local v3, "bestLocation":Landroid/location/Location;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    .local v5, "provider":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 133
    .local v6, "lastKnownLocation":Landroid/location/Location;
    if-eqz v6, :cond_32

    .line 134
    if-eqz v3, :cond_31

    .line 135
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 136
    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_38

    cmp-long v7, v7, v9

    if-gez v7, :cond_32

    .line 137
    :cond_31
    move-object v3, v6

    .line 140
    .end local v5    # "provider":Ljava/lang/String;
    .end local v6    # "lastKnownLocation":Landroid/location/Location;
    :cond_32
    goto :goto_f

    .line 141
    :cond_33
    nop

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    return-object v3

    .line 143
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "bestLocation":Landroid/location/Location;
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected getQueryLocationTimeout()J
    .registers 3

    .line 151
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public declared-synchronized stop()V
    .registers 4

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 227
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    .line 228
    .local v2, "listener":Landroid/location/LocationListener;
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    .line 229
    .end local v2    # "listener":Landroid/location/LocationListener;
    goto :goto_c

    .line 230
    :cond_1c
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 232
    :cond_1e
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_29

    .line 233
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 234
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 236
    :cond_29
    monitor-exit p0

    return-void

    .line 225
    :catchall_2b
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/LocationBasedCountryDetector;
    throw v0
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
