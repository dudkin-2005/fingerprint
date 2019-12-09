.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$2(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1205
    nop

    .line 1206
    nop

    .line 1207
    nop

    .line 1208
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1209
    nop

    .line 1210
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1211
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1212
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    nop

    .line 1244
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1250
    move p1, v3

    goto :goto_1

    .line 1245
    :cond_1
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1246
    nop

    .line 1247
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1250
    :cond_2
    move p1, v3

    move v2, p1

    goto :goto_1

    .line 1213
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1214
    if-nez v1, :cond_4

    .line 1215
    return-void

    .line 1217
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1218
    if-eqz v1, :cond_5

    .line 1219
    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    .line 1221
    move-object v4, v2

    :cond_5
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1224
    if-eqz v2, :cond_6

    .line 1225
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 1226
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1235
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    return-void

    .line 1240
    :cond_6
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1241
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1242
    nop

    .line 1250
    :goto_1
    if-eqz v4, :cond_e

    array-length p2, v4

    if-nez p2, :cond_7

    goto/16 :goto_a

    .line 1254
    :cond_7
    const-string p2, "android.intent.extra.UID"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1255
    if-eqz v2, :cond_b

    .line 1256
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1257
    if-eqz p1, :cond_8

    .line 1262
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p1, v4, p2}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V

    goto :goto_2

    .line 1265
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 1264
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p1, v4}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;)V

    .line 1265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1268
    array-length v0, v4

    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_a

    aget-object v2, v4, v1

    .line 1270
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1271
    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 1273
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1272
    invoke-static {v5, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1274
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v2, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1275
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_4

    .line 1280
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1281
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v6, v2}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 1282
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1283
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;)V

    .line 1286
    :goto_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;

    invoke-direct {v6, p0, v2}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1294
    goto :goto_5

    .line 1282
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1289
    :catch_0
    move-exception v5

    .line 1292
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t resolve new app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1299
    :cond_a
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string p2, "@pm@"

    invoke-virtual {p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1300
    goto :goto_9

    .line 1265
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 1301
    :cond_b
    if-eqz p1, :cond_c

    goto :goto_7

    .line 1307
    :cond_c
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 1308
    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0, v4, p2}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V

    .line 1309
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1311
    :goto_7
    array-length p1, v4

    :goto_8
    if-ge v3, p1, :cond_d

    aget-object p2, v4, v3

    .line 1312
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$PXK_S3ijBAkFZ4wQtjneIECynPo;

    invoke-direct {v1, p0, p2}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$PXK_S3ijBAkFZ4wQtjneIECynPo;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1316
    :cond_d
    :goto_9
    return-void

    .line 1309
    :catchall_2
    move-exception p2

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p2

    .line 1251
    :cond_e
    :goto_a
    return-void
.end method
