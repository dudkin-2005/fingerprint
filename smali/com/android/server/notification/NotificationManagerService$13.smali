.class Lcom/android/server/notification/NotificationManagerService$13;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 5420
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 5423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5425
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 5426
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_4d

    .line 5428
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 5429
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    .line 5431
    :cond_1f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;
    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$7602(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;

    .line 5432
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7700(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5433
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7800(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5434
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7900(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v7

    const/4 v8, 0x0

    .line 5432
    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_46} :catch_4c
    .catchall {:try_start_4 .. :try_end_46} :catchall_47

    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    goto :goto_4d

    .line 5439
    :catchall_47
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5437
    :catch_4c
    move-exception v2

    .line 5439
    :cond_4d
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5440
    nop

    .line 5441
    return-void
.end method
