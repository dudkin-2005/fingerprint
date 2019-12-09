.class Lcom/android/server/custom/display/TwilightTracker$3;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/TwilightTracker;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/TwilightTracker;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$3;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/server/custom/display/TwilightTracker$3;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {v0}, Lcom/android/server/custom/display/TwilightTracker;->access$800(Lcom/android/server/custom/display/TwilightTracker;)Lcom/android/server/custom/display/TwilightTracker$LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->processNewLocation(Landroid/location/Location;)V

    .line 441
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 444
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 447
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 450
    return-void
.end method
