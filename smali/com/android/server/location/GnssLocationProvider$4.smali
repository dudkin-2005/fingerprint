.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 557
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 558
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    if-nez p2, :cond_1

    .line 560
    return-void

    .line 563
    :cond_1
    const-string v0, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1000(Lcom/android/server/location/GnssLocationProvider;Z)V

    goto :goto_1

    .line 565
    :cond_2
    const-string v0, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_1

    .line 567
    :cond_3
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 568
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 569
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 570
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 572
    :cond_4
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 573
    iget-object p2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p2, p1}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_1

    .line 571
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$1200(Lcom/android/server/location/GnssLocationProvider;)V

    .line 575
    :cond_6
    :goto_1
    return-void
.end method
