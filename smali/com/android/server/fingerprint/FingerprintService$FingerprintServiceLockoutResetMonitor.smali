.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintServiceLockoutResetMonitor"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .locals 1

    .line 1069
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 1070
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    .line 1071
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string p2, "lockout reset callback"

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1074
    :try_start_0
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    goto :goto_0

    .line 1075
    :catch_0
    move-exception p1

    .line 1076
    const-string p2, "FingerprintService"

    const-string v0, "caught remote exception in linkToDeath"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    :goto_0
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    .line 1062
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->releaseWakelock()V

    return-void
.end method

.method private releaseWakelock()V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1119
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1111
    const-string v0, "FingerprintService"

    const-string v1, "Lockout reset callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return-void
.end method

.method public sendLockoutReset()V
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    if-eqz v0, :cond_0

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v1

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->onLockoutReset(JLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->releaseWakelock()V

    goto :goto_1

    .line 1091
    :catch_1
    move-exception v0

    .line 1092
    const-string v1, "FingerprintService"

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1097
    :goto_0
    nop

    .line 1099
    :cond_0
    :goto_1
    return-void
.end method
