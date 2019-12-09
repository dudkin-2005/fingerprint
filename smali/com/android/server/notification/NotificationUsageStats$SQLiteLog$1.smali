.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1096
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1098
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1112
    const-string v0, "NotificationSQLiteLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1109
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v3, 0x4

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1110
    goto :goto_0

    .line 1106
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v3, 0x3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1107
    goto :goto_0

    .line 1103
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1104
    goto :goto_0

    .line 1100
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1101
    nop

    .line 1115
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
