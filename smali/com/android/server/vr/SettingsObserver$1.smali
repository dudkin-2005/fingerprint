.class Lcom/android/server/vr/SettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field final synthetic val$secureSettingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    iput-object p2, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 73
    const-string p1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo p1, "setting_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    const-string/jumbo p1, "previous_value"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v0, "new_value"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/SettingsObserver$1;->getSendingUserId()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/vr/SettingsObserver;->access$000(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    :cond_0
    return-void
.end method
