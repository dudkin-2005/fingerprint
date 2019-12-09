.class Lcom/android/server/notification/NotificationManagerService$10;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/GroupHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;
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

    .line 1788
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutoGroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1791
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1792
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;)V

    .line 1793
    monitor-exit v0

    .line 1794
    return-void

    .line 1793
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;

    .line 1805
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->access$3400(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 1806
    return-void
.end method

.method public removeAutoGroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1798
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1799
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAutogroupKeyLocked(Ljava/lang/String;)V

    .line 1800
    monitor-exit v0

    .line 1801
    return-void

    .line 1800
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public removeAutoGroupSummary(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1810
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1811
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V

    .line 1812
    monitor-exit v0

    .line 1813
    return-void

    .line 1812
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
