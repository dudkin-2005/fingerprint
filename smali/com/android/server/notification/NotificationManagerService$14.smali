.class Lcom/android/server/notification/NotificationManagerService$14;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$count:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rank:I

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZII)V
    .locals 0

    .line 5832
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$rank:I

    iput p14, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 5835
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 5836
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 5839
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v9

    .line 5841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v10

    .line 5842
    if-eqz v10, :cond_5

    .line 5847
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5848
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5851
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    and-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    if-eq v1, v2, :cond_3

    .line 5852
    monitor-exit v9

    return-void

    .line 5854
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 5855
    monitor-exit v9

    return-void

    .line 5859
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v10}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 5860
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$rank:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$count:I

    move-object v2, v10

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 5861
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5863
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5864
    goto :goto_1

    .line 5866
    :cond_5
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    .line 5867
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 5868
    if-eqz v0, :cond_6

    .line 5869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 5873
    :cond_6
    :goto_1
    monitor-exit v9

    .line 5874
    return-void

    .line 5873
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
