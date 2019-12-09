.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ESPORT_MODE_ENABLED:Landroid/net/Uri;

.field private final ESPORT_MODE_KEY:Ljava/lang/String;

.field private final NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

.field private final NOTIFICATION_APP_LOCKER_SWITCH_KEY:Ljava/lang/String;

.field private final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1291
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1292
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1267
    const-string/jumbo p1, "notification_badging"

    .line 1268
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 1269
    const-string/jumbo p1, "notification_light_pulse"

    .line 1270
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1271
    const-string/jumbo p1, "max_notification_enqueue_rate"

    .line 1272
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 1275
    const-string/jumbo p1, "notification_light_pulse_color"

    .line 1276
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    .line 1277
    const-string/jumbo p1, "oem_vibrate_under_silent"

    .line 1278
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    .line 1280
    const-string p1, "app_locker_switch"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH_KEY:Ljava/lang/String;

    .line 1281
    const-string p1, "app_locker_switch"

    .line 1282
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    .line 1286
    const-string p1, "esport_mode_enabled"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_KEY:Ljava/lang/String;

    .line 1287
    const-string p1, "esport_mode_enabled"

    .line 1288
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    .line 1293
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 1296
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1297
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1299
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1301
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1305
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1307
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1310
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()Lcom/oneplus/notification/NotificationVibrationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/notification/NotificationVibrationController;->observe()V

    .line 1312
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1317
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1320
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1321
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1324
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1325
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1328
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1329
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1330
    :cond_17
    const-string/jumbo v4, "notification_light_pulse"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_22

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v3

    .line 1332
    .local v4, "pulseEnabled":Z
    :goto_23
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    if-eq v5, v4, :cond_35

    .line 1333
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v5, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1334
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1337
    .end local v4    # "pulseEnabled":Z
    :cond_35
    if-eqz p1, :cond_3f

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1338
    :cond_3f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "max_notification_enqueue_rate"

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1339
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v6

    .line 1338
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2402(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 1341
    :cond_51
    if-eqz p1, :cond_5b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1342
    :cond_5b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/RankingHelper;->updateBadgingEnabled()V

    .line 1346
    :cond_64
    if-eqz p1, :cond_6e

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1348
    :cond_6e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1349
    :try_start_73
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 1350
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->recalculateLights()V

    .line 1351
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    goto :goto_7b

    .line 1352
    :cond_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_e6

    .line 1353
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1355
    :cond_91
    if-eqz p1, :cond_9b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 1356
    :cond_9b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "oem_vibrate_under_silent"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2502(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1360
    :cond_a7
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()Lcom/oneplus/notification/NotificationVibrationController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/oneplus/notification/NotificationVibrationController;->update(Landroid/net/Uri;)V

    .line 1362
    if-eqz p1, :cond_b8

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1363
    :cond_b8
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "app_locker_switch"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2602(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1366
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 1370
    :cond_cc
    if-eqz p1, :cond_d6

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 1371
    :cond_d6
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "esport_mode_enabled"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_e1

    goto :goto_e2

    :cond_e1
    move v1, v3

    :goto_e2
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$2802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1376
    :cond_e5
    return-void

    .line 1352
    :catchall_e6
    move-exception v1

    :try_start_e7
    monitor-exit v4
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v1
.end method
