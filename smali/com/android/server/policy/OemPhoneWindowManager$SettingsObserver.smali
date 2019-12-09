.class Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1488
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 1489
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1487
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 1490
    return-void
.end method


# virtual methods
.method observe()V
    .registers 6

    .line 1495
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1b

    .line 1496
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_key_define"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1500
    :cond_1b
    new-array v1, v0, [I

    const/16 v4, 0xb

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1501
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_key_lock_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1504
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_force_home_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1509
    :cond_3e
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_show_on_screen_navkeys"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1512
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_home_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_home_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1518
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_menu_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1521
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_menu_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1524
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_back_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1527
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_back_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1530
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_app_switch_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_app_switch_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1536
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1544
    new-array v1, v0, [I

    const/16 v4, 0xd

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1545
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "oem_acc_sensor_three_finger"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1555
    :cond_cd
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_e9

    .line 1556
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_quickpay_enable"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1559
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_quickpay_default_way"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1564
    :cond_e9
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_fingerprint_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_fingerprint_long_press_camera_shot"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1576
    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_11d

    .line 1577
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_navigation_bar_type"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1580
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_gesture_button_launcher"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1590
    :cond_11d
    sget-boolean v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_139

    new-array v0, v0, [I

    const/16 v1, 0x3b

    aput v1, v0, v2

    .line 1591
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 1592
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_camera_notch_ignore"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1599
    :cond_139
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1600
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSettings()V

    .line 1605
    return-void
.end method

.method public updateSettings()V
    .registers 11

    .line 1608
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1611
    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [I

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1612
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "oem_acc_key_define"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 1615
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v2, :cond_3f

    .line 1616
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mKeysBehavior: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_3f
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateSwapKey()V

    .line 1621
    :cond_44
    new-array v2, v1, [I

    const/16 v3, 0xb

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1622
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "oem_acc_key_lock_mode"

    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1624
    invoke-virtual {v5}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v5

    .line 1622
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1625
    .local v2, "keyLockMode":I
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v3

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 1627
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_2bc

    if-ne v3, v5, :cond_94

    .line 1629
    :try_start_6d
    const-string v3, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 1630
    const-string v3, "/proc/s1302/key_disable"

    const-string v5, "disable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 1632
    :cond_81
    const-string v3, "/proc/touchpanel/key_disable"

    const-string v5, "disable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_88} :catch_89
    .catchall {:try_start_6d .. :try_end_88} :catchall_2bc

    goto :goto_93

    .line 1634
    :catch_89
    move-exception v3

    .line 1635
    .local v3, "e":Ljava/io/IOException;
    :try_start_8a
    const-string v5, "OemPhoneWindowManager"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_2bc

    .line 1636
    .end local v3    # "e":Ljava/io/IOException;
    :goto_93
    goto :goto_ba

    .line 1639
    :cond_94
    :try_start_94
    const-string v3, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1640
    const-string v3, "/proc/s1302/key_disable"

    const-string v5, "enable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 1642
    :cond_a8
    const-string v3, "/proc/touchpanel/key_disable"

    const-string v5, "enable"

    invoke-static {v3, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_af} :catch_b0
    .catchall {:try_start_94 .. :try_end_af} :catchall_2bc

    .line 1646
    :goto_af
    goto :goto_ba

    .line 1644
    :catch_b0
    move-exception v3

    .line 1645
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_b1
    const-string v5, "OemPhoneWindowManager"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .end local v3    # "e":Ljava/io/IOException;
    :goto_ba
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "buttons_force_home_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c6

    move v3, v1

    goto :goto_c7

    :cond_c6
    move v3, v4

    :goto_c7
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 1651
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "oem_acc_fingerprint_enrolling"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d6

    move v3, v1

    goto :goto_d7

    :cond_d6
    move v3, v4

    :goto_d7
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 1655
    .end local v2    # "keyLockMode":I
    :cond_d9
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e5

    move v2, v1

    goto :goto_e6

    :cond_e5
    move v2, v4

    .line 1657
    .local v2, "enableSoftwareKeys":Z
    :goto_e6
    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$500()Z

    move-result v3

    if-eq v2, v3, :cond_112

    .line 1658
    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$502(Z)Z

    .line 1659
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z
    invoke-static {v9, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v9

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z
    invoke-static {v8, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v8

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z
    invoke-static {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->access$902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v7

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z
    invoke-static {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->access$802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v6

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z
    invoke-static {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    move-result v5

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z
    invoke-static {v3, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1662
    :cond_112
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V
    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1200(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1668
    new-array v3, v1, [I

    const/16 v5, 0xd

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_145

    .line 1669
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "oem_acc_sensor_three_finger"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1671
    .local v3, "pointerScreenCapture":I
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v6

    if-eqz v6, :cond_145

    .line 1672
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-result-object v6

    if-eqz v3, :cond_140

    .line 1673
    nop

    .line 1672
    move v7, v1

    goto :goto_142

    .line 1674
    :cond_140
    nop

    .line 1672
    move v7, v5

    :goto_142
    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1683
    .end local v3    # "pointerScreenCapture":I
    :cond_145
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v3, :cond_1d8

    .line 1684
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "op_quickpay_enable"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_158

    move v6, v1

    goto :goto_159

    :cond_158
    move v6, v4

    :goto_159
    iput-boolean v6, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 1686
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "op_quickpay_default_way"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 1688
    const-string v3, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: ScreenOff enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " which="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_1d8

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-nez v3, :cond_1d8

    .line 1692
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "quickpay_button_xy"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1694
    .local v3, "loadXY":Ljava/lang/String;
    if-eqz v3, :cond_1c2

    .line 1695
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1696
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v5, :cond_1c2

    .line 1697
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    .line 1698
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 1701
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1c2
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: loadXY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    .end local v3    # "loadXY":Ljava/lang/String;
    :cond_1d8
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_fingerprint_long_press_action"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    .line 1708
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_fingerprint_long_press_camera_shot"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1f4

    move v5, v1

    goto :goto_1f5

    :cond_1f4
    move v5, v4

    :goto_1f5
    iput-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    .line 1716
    sget-boolean v3, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v3, :cond_283

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v3, :cond_283

    .line 1717
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "op_navigation_bar_type"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_20f

    move v3, v1

    goto :goto_210

    :cond_20f
    move v3, v4

    .line 1719
    .local v3, "enabled":Z
    :goto_210
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_gesture_button_launcher"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_21d

    move v5, v1

    goto :goto_21e

    :cond_21d
    move v5, v4

    .line 1721
    .local v5, "isLauncherSupported":Z
    :goto_21e
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v6, :cond_24f

    .line 1723
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v6, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eq v6, v5, :cond_248

    .line 1724
    const-string v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GestureButton: update launcher gesture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sput-boolean v5, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    .line 1727
    :cond_248
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/policy/OemGestureButton;->updateSettings(ZZ)V

    .line 1729
    :cond_24f
    if-eqz v3, :cond_269

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z
    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v6

    if-nez v6, :cond_269

    .line 1730
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v6, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1731
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z
    invoke-static {v6, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1733
    :cond_269
    if-nez v3, :cond_283

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z
    invoke-static {v6}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_283

    .line 1734
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v6, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1735
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z
    invoke-static {v6, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 1744
    .end local v3    # "enabled":Z
    .end local v5    # "isLauncherSupported":Z
    :cond_283
    sget-boolean v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v3, :cond_2ba

    new-array v3, v1, [I

    const/16 v5, 0x3b

    aput v5, v3, v4

    .line 1745
    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2ba

    .line 1746
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "op_camera_notch_ignore"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2a1

    goto :goto_2a2

    :cond_2a1
    move v1, v4

    :goto_2a2
    iput-boolean v1, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    .line 1748
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v1, :cond_2b5

    .line 1749
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v1, v3}, Lcom/android/server/policy/OemGestureButton;->updateNotchSettings(Z)V

    .line 1751
    :cond_2b5
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->expandScreenDecor()V

    .line 1756
    .end local v2    # "enableSoftwareKeys":Z
    :cond_2ba
    monitor-exit v0

    .line 1757
    return-void

    .line 1756
    :catchall_2bc
    move-exception v1

    monitor-exit v0
    :try_end_2be
    .catchall {:try_start_b1 .. :try_end_2be} :catchall_2bc

    throw v1
.end method
