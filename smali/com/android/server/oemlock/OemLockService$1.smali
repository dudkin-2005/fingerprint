.class Lcom/android/server/oemlock/OemLockService$1;
.super Ljava/lang/Object;
.source "OemLockService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    const-string p1, "no_factory_reset"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    const-string p1, "no_factory_reset"

    .line 99
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 100
    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p1}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p1, p2}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V

    .line 105
    :cond_0
    return-void
.end method
