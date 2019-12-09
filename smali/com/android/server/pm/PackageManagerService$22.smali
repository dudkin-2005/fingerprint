.class Lcom/android/server/pm/PackageManagerService$22;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 22355
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$22;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 22358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->val$resolver:Landroid/content/ContentResolver;

    const-string v2, "enable_ephemeral_feature"

    .line 22359
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "instant_apps_enabled"

    .line 22360
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    nop

    .line 22358
    :cond_1b
    :goto_1b
    # setter for: Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Z
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$6502(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 22361
    return-void
.end method
