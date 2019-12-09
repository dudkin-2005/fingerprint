.class Lcom/android/server/policy/PhoneWindowManager$17;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 7545
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 7548
    const-string p1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7549
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    goto :goto_0

    .line 7553
    :cond_0
    :try_start_0
    const-string/jumbo p1, "uimode"

    .line 7554
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 7553
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p1

    .line 7555
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result p1

    iput p1, p2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7557
    goto :goto_0

    .line 7556
    :catch_0
    move-exception p1

    .line 7559
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 7560
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7561
    :try_start_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7562
    monitor-exit p1

    .line 7563
    return-void

    .line 7562
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
