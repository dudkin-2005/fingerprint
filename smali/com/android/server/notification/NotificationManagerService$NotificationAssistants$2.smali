.class Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbnToPost:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$snoozeCriterionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    .line 6619
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$snoozeCriterionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 6622
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 6624
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 6627
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$snoozeCriterionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6631
    goto :goto_0

    .line 6629
    :catch_0
    move-exception v1

    .line 6630
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (snoozed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6632
    :goto_0
    return-void
.end method
