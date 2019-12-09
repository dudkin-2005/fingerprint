.class Lcom/android/server/GestureLauncherService$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 441
    const-string p1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/GestureLauncherService;->access$202(Lcom/android/server/GestureLauncherService;I)I

    .line 443
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p2}, Lcom/android/server/GestureLauncherService;->access$300(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 444
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->access$500(Lcom/android/server/GestureLauncherService;)V

    .line 445
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->access$600(Lcom/android/server/GestureLauncherService;)V

    .line 446
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 448
    :cond_0
    return-void
.end method
