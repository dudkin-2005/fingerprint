.class Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
.super Landroid/os/Handler;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusGpsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusGpsNotification;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusGpsNotification;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 221
    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 227
    sget-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 228
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 229
    :try_start_9
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsNotificationHander handleMessage mCurrentGpsPackageList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v3, v3, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " msg.what ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw v1

    .line 233
    :cond_34
    :goto_34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_92

    goto :goto_91

    .line 242
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 243
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6b

    .line 244
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v1, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z
    invoke-static {v1, v2}, Lcom/android/server/OnePlusGpsNotification;->access$402(Lcom/android/server/OnePlusGpsNotification;Z)Z

    .line 246
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/OnePlusGpsNotification;->access$302(Lcom/android/server/OnePlusGpsNotification;J)J

    .line 247
    iget-object v1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    # getter for: Lcom/android/server/OnePlusGpsNotification;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/server/OnePlusGpsNotification;->access$500(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x50c0037

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 249
    :cond_6b
    monitor-exit v0

    goto :goto_91

    .line 250
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_6d

    throw v1

    .line 235
    :pswitch_70
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    # getter for: Lcom/android/server/OnePlusGpsNotification;->mHandler:Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
    invoke-static {v0}, Lcom/android/server/OnePlusGpsNotification;->access$200(Lcom/android/server/OnePlusGpsNotification;)Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    move-result-object v0

    const v1, 0xdac0

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/OnePlusGpsNotification;->mLastNotifyTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/OnePlusGpsNotification;->access$302(Lcom/android/server/OnePlusGpsNotification;J)J

    .line 237
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/OnePlusGpsNotification;->mLastIsCancel:Z
    invoke-static {v0, v1}, Lcom/android/server/OnePlusGpsNotification;->access$402(Lcom/android/server/OnePlusGpsNotification;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-virtual {v0}, Lcom/android/server/OnePlusGpsNotification;->notifyPackageNotification()V

    .line 239
    nop

    .line 256
    :goto_91
    return-void

    :pswitch_data_92
    .packed-switch 0xdac0
        :pswitch_70
        :pswitch_3a
    .end packed-switch
.end method
