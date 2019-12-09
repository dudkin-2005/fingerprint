.class Lcom/android/server/custom/display/TwilightTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "TwilightTracker.java"


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

    .line 407
    iput-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$1;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 410
    const-string p1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "state"

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$1;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {p1}, Lcom/android/server/custom/display/TwilightTracker;->access$800(Lcom/android/server/custom/display/TwilightTracker;)Lcom/android/server/custom/display/TwilightTracker$LocationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->requestLocationUpdate()V

    .line 414
    return-void

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/android/server/custom/display/TwilightTracker$1;->this$0:Lcom/android/server/custom/display/TwilightTracker;

    invoke-static {p1}, Lcom/android/server/custom/display/TwilightTracker;->access$800(Lcom/android/server/custom/display/TwilightTracker;)Lcom/android/server/custom/display/TwilightTracker$LocationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/custom/display/TwilightTracker$LocationHandler;->requestTwilightUpdate()V

    .line 419
    return-void
.end method
