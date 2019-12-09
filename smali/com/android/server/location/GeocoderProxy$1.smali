.class Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field final synthetic val$addrs:Ljava/util/List;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$maxResults:I

.field final synthetic val$params:Landroid/location/GeocoderParams;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy;[Ljava/lang/String;DDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iput-wide p5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iput p7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iput-object p8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iput-object p9, p0, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 9

    .line 77
    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v1, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-wide v3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget v5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    const-string v0, "GeocoderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_0
    return-void
.end method
