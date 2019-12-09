.class Lcom/android/server/OemExService$5;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemExService;->setParamSwId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemExService;

    .line 633
    iput-object p1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 637
    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 639
    const-string/jumbo v0, "ro.rf_version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "rfVersion":Ljava/lang/String;
    if-eqz v0, :cond_110

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_110

    .line 645
    :cond_16
    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->trackRfData(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/OemExService;->access$1000(Lcom/android/server/OemExService;Ljava/lang/String;)V

    .line 646
    const-string v1, "TDD_FDD_Ch_In_All"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 647
    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->trackSwIdData(I)V
    invoke-static {v1, v2}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;I)V

    .line 648
    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->setParamSwId(I)V
    invoke-static {v1, v2}, Lcom/android/server/OemExService;->access$1200(Lcom/android/server/OemExService;I)V

    .line 649
    return-void

    .line 652
    :cond_2f
    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 653
    .local v1, "simCount":I
    if-gez v1, :cond_40

    return-void

    .line 655
    :cond_40
    iget-object v3, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 656
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_52

    return-void

    .line 658
    :cond_52
    const/4 v4, 0x0

    .line 662
    .local v4, "indiaIso":Z
    packed-switch v1, :pswitch_data_126

    goto :goto_97

    .line 672
    :pswitch_57
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "countryIso1":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "countryIso2":Ljava/lang/String;
    if-eqz v2, :cond_97

    if-eqz v5, :cond_97

    const-string v6, "IN"

    .line 675
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "IN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 676
    const/4 v4, 0x1

    goto :goto_97

    .line 665
    .end local v2    # "countryIso1":Ljava/lang/String;
    .end local v5    # "countryIso2":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 666
    .restart local v2    # "countryIso1":Ljava/lang/String;
    if-eqz v2, :cond_97

    const-string v5, "IN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 667
    const/4 v4, 0x1

    .line 685
    .end local v2    # "countryIso1":Ljava/lang/String;
    :cond_97
    :goto_97
    if-nez v4, :cond_a2

    .line 686
    const-string v2, "OemExService"

    const-string/jumbo v5, "not all in sim."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 690
    :cond_a2
    const-string v2, "OemExService"

    const-string v5, "all in sim."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "networkCountryIso":Ljava/lang/String;
    const-string v5, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get country from sim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v2, :cond_cb

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 694
    :cond_cb
    iget-object v5, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->getCountryFromLocation()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/OemExService;->access$1300(Lcom/android/server/OemExService;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 695
    sget-boolean v5, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_ec

    const-string v5, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get country from location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_ec
    if-eqz v2, :cond_10f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f5

    goto :goto_10f

    .line 702
    :cond_f5
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "IN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 703
    iget-object v5, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    const/4 v6, 0x3

    # invokes: Lcom/android/server/OemExService;->trackSwIdData(I)V
    invoke-static {v5, v6}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;I)V

    .line 704
    iget-object v5, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->setParamSwId(I)V
    invoke-static {v5, v6}, Lcom/android/server/OemExService;->access$1200(Lcom/android/server/OemExService;I)V

    .line 708
    .end local v0    # "rfVersion":Ljava/lang/String;
    .end local v1    # "simCount":I
    .end local v2    # "networkCountryIso":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "indiaIso":Z
    :cond_10e
    goto :goto_125

    .line 699
    .restart local v0    # "rfVersion":Ljava/lang/String;
    .restart local v1    # "simCount":I
    .restart local v2    # "networkCountryIso":Ljava/lang/String;
    .restart local v3    # "telManager":Landroid/telephony/TelephonyManager;
    .restart local v4    # "indiaIso":Z
    :cond_10f
    :goto_10f
    return-void

    .line 641
    .end local v1    # "simCount":I
    .end local v2    # "networkCountryIso":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "indiaIso":Z
    :cond_110
    :goto_110
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_11b

    const-string v1, "OemExService"

    const-string v2, "error getting rf version."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11b} :catch_11c

    .line 642
    :cond_11b
    return-void

    .line 706
    .end local v0    # "rfVersion":Ljava/lang/String;
    :catch_11c
    move-exception v0

    .line 707
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OemExService"

    const-string/jumbo v2, "setParamSwId error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_125
    return-void

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_82
        :pswitch_57
    .end packed-switch
.end method
