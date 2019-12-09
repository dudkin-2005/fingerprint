.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$response:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 5561
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->val$response:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 5564
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->getResultData()Ljava/lang/String;

    move-result-object p1

    .line 5565
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;->val$response:Landroid/os/IBinder;

    invoke-static {p2, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5566
    return-void
.end method
