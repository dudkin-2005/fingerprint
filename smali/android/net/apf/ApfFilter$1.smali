.class Landroid/net/apf/ApfFilter$1;
.super Landroid/content/BroadcastReceiver;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;)V
    .locals 0

    .line 326
    iput-object p1, p0, Landroid/net/apf/ApfFilter$1;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 330
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 331
    const-string/jumbo p2, "power"

    .line 332
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 333
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    .line 334
    iget-object p2, p0, Landroid/net/apf/ApfFilter$1;->this$0:Landroid/net/apf/ApfFilter;

    invoke-virtual {p2, p1}, Landroid/net/apf/ApfFilter;->setDozeMode(Z)V

    .line 336
    :cond_0
    return-void
.end method
