.class public Lcom/android/server/location/PassiveProvider;
.super Ljava/lang/Object;
.source "PassiveProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final TAG:Ljava/lang/String; = "PassiveProvider"


# instance fields
.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 46
    new-instance v10, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v10, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 55
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 78
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mReportLocation="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public enable()V
    .locals 0

    .line 74
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string/jumbo v0, "passive"

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 0

    .line 82
    iget-boolean p1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz p1, :cond_0

    .line 83
    const/4 p1, 0x2

    return p1

    .line 85
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .line 91
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 112
    const/4 p1, 0x0

    return p1
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0

    .line 96
    iget-boolean p1, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-boolean p1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    .line 97
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    const-string p1, "PassiveProvider"

    const-string v0, "RemoteException calling reportLocation"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void
.end method
