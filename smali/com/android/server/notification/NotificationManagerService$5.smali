.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v1, p0

    .line 1033
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-nez v0, :cond_0

    .line 1035
    return-void

    .line 1038
    :cond_0
    nop

    .line 1039
    nop

    .line 1040
    nop

    .line 1041
    nop

    .line 1042
    nop

    .line 1043
    nop

    .line 1044
    const/4 v13, 0x5

    .line 1046
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 1047
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    .line 1048
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 1049
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1050
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1051
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1052
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1053
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1054
    :cond_1
    move v15, v5

    goto :goto_1

    :cond_2
    move v15, v14

    goto :goto_1

    :cond_3
    move v4, v14

    goto :goto_0

    :cond_4
    move v3, v14

    move v4, v3

    :goto_0
    move v15, v4

    :goto_1
    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1056
    nop

    .line 1057
    const/4 v5, 0x0

    .line 1058
    const/4 v11, 0x1

    if-eqz v3, :cond_5

    const-string v3, "android.intent.extra.REPLACING"

    .line 1059
    invoke-virtual {v2, v3, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1060
    move v10, v11

    goto :goto_2

    .line 1059
    :cond_5
    nop

    .line 1060
    move v10, v14

    :goto_2
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_6
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1062
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1063
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 1108
    :goto_3
    move-object v9, v5

    move/from16 v16, v11

    :goto_4
    move/from16 v17, v14

    move/from16 v18, v17

    goto/16 :goto_a

    .line 1064
    :cond_7
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1065
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1066
    nop

    .line 1067
    nop

    .line 1108
    move-object v9, v5

    move/from16 v17, v11

    move/from16 v16, v14

    move/from16 v18, v16

    goto/16 :goto_a

    .line 1068
    :cond_8
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1069
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1070
    nop

    .line 1071
    nop

    .line 1108
    move-object v9, v5

    move/from16 v18, v11

    move/from16 v16, v14

    move/from16 v17, v16

    goto/16 :goto_a

    .line 1072
    :cond_9
    if-eqz v15, :cond_a

    .line 1073
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1074
    new-array v5, v11, [I

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v5, v14

    goto :goto_3

    .line 1076
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1077
    if-nez v0, :cond_b

    .line 1078
    return-void

    .line 1080
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1081
    if-nez v3, :cond_c

    .line 1082
    return-void

    .line 1084
    :cond_c
    if-eqz v4, :cond_11

    .line 1087
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1089
    if-eq v12, v6, :cond_d

    .line 1087
    move v4, v12

    goto :goto_5

    .line 1090
    :cond_d
    nop

    .line 1087
    move v4, v14

    :goto_5
    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    if-eq v0, v11, :cond_f

    if-nez v0, :cond_e

    goto :goto_6

    .line 1103
    :cond_e
    move v0, v11

    goto :goto_7

    .line 1093
    :cond_f
    :goto_6
    nop

    .line 1103
    move v0, v14

    :goto_7
    goto :goto_9

    .line 1101
    :catch_0
    move-exception v0

    goto :goto_8

    .line 1095
    :catch_1
    move-exception v0

    .line 1098
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_10

    .line 1099
    const-string v4, "NotificationService"

    const-string v5, "Exception trying to look up app enabled setting"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    :cond_10
    nop

    .line 1105
    :cond_11
    :goto_8
    move v0, v11

    :goto_9
    new-array v4, v11, [Ljava/lang/String;

    aput-object v3, v4, v14

    .line 1106
    new-array v5, v11, [I

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v5, v14

    .line 1108
    move/from16 v16, v0

    move-object v0, v4

    move-object v9, v5

    goto/16 :goto_4

    :goto_a
    if-eqz v0, :cond_16

    array-length v2, v0

    if-lez v2, :cond_16

    .line 1109
    array-length v8, v0

    move v7, v14

    :goto_b
    if-ge v7, v8, :cond_16

    aget-object v5, v0, v7

    .line 1110
    if-eqz v16, :cond_13

    .line 1111
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1400()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1500()I

    move-result v4

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-nez v15, :cond_12

    move/from16 v21, v11

    goto :goto_c

    :cond_12
    move/from16 v21, v14

    :goto_c
    const/16 v22, 0x0

    move/from16 v23, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v20

    move-object v14, v9

    move/from16 v9, v21

    move/from16 v24, v10

    move v10, v12

    move/from16 v20, v11

    move v11, v13

    move v13, v12

    move-object/from16 v12, v22

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_d

    .line 1113
    :cond_13
    move/from16 v23, v7

    move/from16 v19, v8

    move-object v14, v9

    move/from16 v24, v10

    move/from16 v20, v11

    move v13, v12

    if-eqz v17, :cond_14

    .line 1114
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_d

    .line 1115
    :cond_14
    if-eqz v18, :cond_15

    .line 1116
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1109
    :cond_15
    :goto_d
    add-int/lit8 v7, v23, 0x1

    move v12, v13

    move-object v9, v14

    move/from16 v8, v19

    move/from16 v11, v20

    move/from16 v10, v24

    const/4 v13, 0x5

    const/4 v14, 0x0

    goto :goto_b

    .line 1122
    :cond_16
    move-object v14, v9

    move/from16 v24, v10

    move v13, v12

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v11, v24

    invoke-virtual {v2, v11, v0, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1123
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    invoke-virtual {v2, v11, v0, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1124
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2, v11, v0, v14}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1125
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    invoke-virtual {v2, v11, v13, v0, v14}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    .line 1126
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1128
    :cond_17
    return-void
.end method
