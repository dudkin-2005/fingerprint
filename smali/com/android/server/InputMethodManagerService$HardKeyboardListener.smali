.class Lcom/android/server/InputMethodManagerService$HardKeyboardListener;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .line 1259
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "x1"    # Lcom/android/server/InputMethodManagerService$1;

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public handleHardKeyboardStatusChange(Z)V
    .registers 5
    .param p1, "available"    # Z

    .line 1271
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1272
    :try_start_5
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 1273
    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1274
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020285

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1276
    if-eqz p1, :cond_32

    const/4 v2, 0x0

    goto :goto_34

    :cond_32
    const/16 v2, 0x8

    .line 1275
    :goto_34
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    :cond_37
    monitor-exit v0

    .line 1279
    return-void

    .line 1278
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public onHardKeyboardStatusChange(Z)V
    .registers 6
    .param p1, "available"    # Z

    .line 1263
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1263
    const/16 v3, 0xfa0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    return-void
.end method
