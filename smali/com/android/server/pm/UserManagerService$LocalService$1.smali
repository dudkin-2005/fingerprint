.class Lcom/android/server/pm/UserManagerService$LocalService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$LocalService;->removeAllUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$LocalService;)V
    .locals 0

    .line 3832
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 3835
    const-string p1, "android.intent.extra.user_handle"

    .line 3836
    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3837
    if-eqz p1, :cond_0

    .line 3838
    return-void

    .line 3840
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3841
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->access$2300(Lcom/android/server/pm/UserManagerService;)V

    .line 3842
    return-void
.end method
