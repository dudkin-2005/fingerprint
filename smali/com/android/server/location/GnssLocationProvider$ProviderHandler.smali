.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2433
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2434
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2435
    return-void
.end method

.method private handleInitialize()V
    .registers 14

    .line 2505
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_init_once()V
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$5200()V

    .line 2513
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_init()Z
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$5300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    .line 2514
    .local v0, "isInitialized":Z
    if-nez v0, :cond_13

    .line 2515
    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed at bootup"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2517
    :cond_13
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$5400(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2522
    :goto_18
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    # invokes: Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$5500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    .line 2532
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2533
    # getter for: Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$5600(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2537
    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$5700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_93

    .line 2538
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2539
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2540
    const-string/jumbo v3, "sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2541
    const-string/jumbo v3, "localhost"

    const-string v4, "7275"

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2544
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    .line 2545
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2547
    :try_start_75
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_7a
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 2550
    goto :goto_83

    .line 2548
    :catch_7b
    move-exception v3

    .line 2549
    .local v3, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v4, "GnssLocationProvider"

    const-string v5, "Malformed SUPL init mime type"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    .end local v3    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_83
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_a0

    .line 2552
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_93
    # getter for: Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 2553
    const-string v1, "GnssLocationProvider"

    const-string v3, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :cond_a0
    :goto_a0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2558
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2559
    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2560
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2561
    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2562
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2563
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2564
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2565
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2569
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2570
    .local v3, "networkRequestBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2571
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2572
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2573
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 2574
    .local v4, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$6000(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->access$5900(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2577
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2578
    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 2579
    .local v5, "locManager":Landroid/location/LocationManager;
    const-wide/16 v6, 0x0

    .line 2580
    .local v6, "minTime":J
    const/4 v8, 0x0

    .line 2581
    .local v8, "minDistance":F
    const/4 v9, 0x0

    .line 2582
    .local v9, "oneShot":Z
    const-string/jumbo v10, "passive"

    invoke-static {v10, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v10

    .line 2589
    .local v10, "request":Landroid/location/LocationRequest;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2590
    new-instance v11, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v11, v12, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 2590
    invoke-virtual {v5, v10, v11, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2594
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2439
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2440
    .local v0, "message":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_e8

    :pswitch_6
    goto/16 :goto_9f

    .line 2486
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4900(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    goto/16 :goto_9f

    .line 2483
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->access$4800(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 2484
    goto/16 :goto_9f

    .line 2465
    :pswitch_25
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(Z)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4400(Lcom/android/server/location/GnssLocationProvider;Z)V

    .line 2466
    goto/16 :goto_9f

    .line 2459
    :pswitch_34
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4300(Lcom/android/server/location/GnssLocationProvider;I)V

    .line 2460
    goto :goto_9f

    .line 2456
    :pswitch_3c
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/net/InetAddress;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4200(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    .line 2457
    goto :goto_9f

    .line 2480
    :pswitch_46
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    .line 2481
    goto :goto_9f

    .line 2477
    :pswitch_4a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    .line 2478
    goto :goto_9f

    .line 2471
    :pswitch_56
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$402(Lcom/android/server/location/GnssLocationProvider;I)I

    .line 2472
    goto :goto_9f

    .line 2474
    :pswitch_5d
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    .line 2475
    goto :goto_9f

    .line 2468
    :pswitch_67
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$4500(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2469
    goto :goto_9f

    .line 2462
    :pswitch_6d
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 2463
    goto :goto_9f

    .line 2453
    :pswitch_77
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Network;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4100(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    .line 2454
    goto :goto_9f

    .line 2449
    :pswitch_81
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    .line 2450
    .local v2, "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->access$4000(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2451
    goto :goto_9f

    .line 2442
    .end local v2    # "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    :pswitch_8f
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_99

    .line 2443
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleEnable()V
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3800(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_9f

    .line 2445
    :cond_99
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->handleDisable()V
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3900(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2447
    nop

    .line 2489
    :goto_9f
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_e7

    .line 2491
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$5000(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2492
    # getter for: Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 2493
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock released by handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/server/location/GnssLocationProvider;->access$5100(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x2
        :pswitch_8f
        :pswitch_81
        :pswitch_77
        :pswitch_6d
        :pswitch_67
        :pswitch_5d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_56
        :pswitch_4a
        :pswitch_46
        :pswitch_3c
        :pswitch_34
        :pswitch_25
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method
