.class Lcom/android/server/location/GeocoderProxy$2;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$locationName:Ljava/lang/String;

.field final synthetic val$lowerLeftLatitude:D

.field final synthetic val$lowerLeftLongitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$result:[Ljava/lang/String;

.field final synthetic val$upperRightLatitude:D

.field final synthetic val$upperRightLongitude:D


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$2;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$result:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iput-wide p6, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iput-wide p8, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iput-wide p10, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iput p12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iput-object p13, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iput-object p14, p0, Lcom/android/server/location/GeocoderProxy$2;->val$addrs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 14

    .line 97
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/GeocoderProxy$2;->val$result:[Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iget-wide v4, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iget-wide v6, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iget-wide v8, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iget v10, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iget-object v11, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iget-object v12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$addrs:Ljava/util/List;

    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    const-string v0, "GeocoderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_0
    return-void
.end method
