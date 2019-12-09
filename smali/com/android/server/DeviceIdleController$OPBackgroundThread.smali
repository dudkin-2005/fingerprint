.class final Lcom/android/server/DeviceIdleController$OPBackgroundThread;
.super Landroid/os/HandlerThread;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OPBackgroundThread"
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1348
    const-string v0, "OPBackgroundThread"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1349
    return-void
.end method

.method public static destroyThread()V
    .registers 1

    .line 1428
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-eqz v0, :cond_e

    .line 1429
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->quit()Z

    .line 1430
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1431
    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1433
    :cond_e
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 1422
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1423
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "nDelay"    # J

    .line 1425
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1426
    return-void
.end method

.method public static prepareThread()V
    .registers 2

    .line 1351
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    if-nez v0, :cond_1d

    .line 1352
    new-instance v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    .line 1353
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->start()V

    .line 1354
    new-instance v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread$1;

    sget-object v1, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mInstance:Lcom/android/server/DeviceIdleController$OPBackgroundThread;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    .line 1411
    :cond_1d
    return-void
.end method

.method public static removeMessages(I)V
    .registers 2
    .param p0, "msgId"    # I

    .line 1419
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    return-void
.end method

.method public static sendEmptyMessageDelayed(IJ)V
    .registers 6
    .param p0, "msgId"    # I
    .param p1, "delayMillis"    # J

    .line 1413
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessageDelayed, msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", run on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    sget-object v0, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1417
    return-void
.end method
