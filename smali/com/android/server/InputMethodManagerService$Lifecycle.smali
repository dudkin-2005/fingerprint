.class public final Lcom/android/server/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1293
    new-instance v0, Lcom/android/server/InputMethodManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    .line 1294
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 1314
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1315
    const-string/jumbo p1, "statusbar"

    .line 1316
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1317
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 1319
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1298
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1300
    const-string v0, "input_method"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1301
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->onSwitchUser(I)V

    .line 1308
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 4

    .line 1324
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1326
    return-void
.end method
