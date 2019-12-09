.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$includeCurrentProfiles:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V
    .locals 0

    .line 6025
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iput-boolean p7, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(I)Z
    .locals 0

    .line 6035
    and-int/lit8 p0, p0, 0x22

    if-eqz p0, :cond_0

    .line 6037
    const/4 p0, 0x0

    return p0

    .line 6039
    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 6028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6030
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 6031
    :goto_0
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 6034
    sget-object v17, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;

    .line 6042
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/4 v13, 0x1

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    const/16 v16, 0x1

    move-object/from16 v10, v17

    move-object v15, v2

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->access$8200(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 6046
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v11, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/4 v13, 0x1

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    const/16 v16, 0x0

    move-object/from16 v10, v17

    move-object v15, v2

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->access$8200(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 6050
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v2

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)Z

    .line 6051
    monitor-exit v1

    .line 6052
    return-void

    .line 6051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
