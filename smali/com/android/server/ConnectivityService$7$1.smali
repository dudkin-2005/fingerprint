.class Lcom/android/server/ConnectivityService$7$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$7;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/ConnectivityService$7;

    .line 3369
    iput-object p1, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 3371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick startTethering:, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget v1, v1, Lcom/android/server/ConnectivityService$7;->val$type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tether_checkbox_not_show_again"

    iget-object v2, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->notShowAgain:Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3373
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->val$mgr:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget v1, v1, Lcom/android/server/ConnectivityService$7;->val$type:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 3374
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget v1, v1, Lcom/android/server/ConnectivityService$7;->val$type:I

    iget-object v2, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$7;->val$receiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-boolean v3, v3, Lcom/android/server/ConnectivityService$7;->val$showProvisioningUi:Z

    iget-object v4, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$7;->val$callerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    .line 3375
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$1;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mTetherDialogShow:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5302(Lcom/android/server/ConnectivityService;Z)Z

    .line 3376
    return-void
.end method
