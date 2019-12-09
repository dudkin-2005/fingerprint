.class final Lcom/android/server/location/GeofenceManager$GeofenceHandler;
.super Landroid/os/Handler;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    .line 462
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    .line 463
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 467
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {p1}, Lcom/android/server/location/GeofenceManager;->access$200(Lcom/android/server/location/GeofenceManager;)V

    .line 473
    :goto_0
    return-void
.end method
