.class Lcom/android/server/ConnectivityService$7;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$mgr:Landroid/net/wifi/WifiManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$showProvisioningUi:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILandroid/net/wifi/WifiManager;Landroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 3363
    iput-object p1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    iput p2, p0, Lcom/android/server/ConnectivityService$7;->val$type:I

    iput-object p3, p0, Lcom/android/server/ConnectivityService$7;->val$mgr:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/server/ConnectivityService$7;->val$receiver:Landroid/os/ResultReceiver;

    iput-boolean p5, p0, Lcom/android/server/ConnectivityService$7;->val$showProvisioningUi:Z

    iput-object p6, p0, Lcom/android/server/ConnectivityService$7;->val$callerPkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3365
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    .line 3367
    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50c0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    .line 3368
    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50c0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    .line 3369
    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/ConnectivityService$7$1;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$7$1;-><init>(Lcom/android/server/ConnectivityService$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3378
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3381
    .local v0, "mDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3382
    const v3, 0x1090032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3383
    .local v2, "checkBoxPanel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 3384
    .local v3, "vg":Landroid/view/ViewGroup;
    if-eqz v3, :cond_76

    .line 3385
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3387
    :cond_76
    const v4, 0x10201a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 3388
    .local v4, "checkBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/server/ConnectivityService$7$2;

    invoke-direct {v5, p0}, Lcom/android/server/ConnectivityService$7$2;-><init>(Lcom/android/server/ConnectivityService$7;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3396
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3397
    iget-object v5, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x50c0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 3398
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3399
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3400
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x7de

    invoke-virtual {v1, v5}, Landroid/view/Window;->setType(I)V

    .line 3401
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3402
    iget-object v1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/ConnectivityService;->mTetherDialogShow:Z
    invoke-static {v1, v5}, Lcom/android/server/ConnectivityService;->access$5302(Lcom/android/server/ConnectivityService;Z)Z

    .line 3403
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3404
    return-void
.end method
