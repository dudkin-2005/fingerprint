.class Lcom/android/server/telecom/TelecomLoaderService$5;
.super Landroid/content/BroadcastReceiver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p1, v0

    .line 320
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method
