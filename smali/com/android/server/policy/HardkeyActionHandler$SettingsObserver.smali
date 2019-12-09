.class Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;Landroid/os/Handler;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    .line 663
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 664
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler;->access$100(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 669
    nop

    .line 670
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/utils/ActionConstants;->getDefaults(I)Lcom/android/internal/utils/ActionConstants$Defaults;

    move-result-object v1

    .line 671
    invoke-interface {v1}, Lcom/android/internal/utils/ActionConstants$Defaults;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 673
    const-string v1, "hardware_keys_disable"

    .line 674
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 673
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 676
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler;->access$500(Lcom/android/server/policy/HardkeyActionHandler;)V

    .line 677
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 681
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {p1}, Lcom/android/server/policy/HardkeyActionHandler;->access$500(Lcom/android/server/policy/HardkeyActionHandler;)V

    .line 682
    return-void
.end method
