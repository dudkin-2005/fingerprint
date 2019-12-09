.class Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;
.super Landroid/os/Handler;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JankMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusJankManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusJankManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 238
    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    .line 239
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "viewName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "viewName":Ljava/lang/String;
    const-string/jumbo v3, "jankType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "jankType":I
    const-string/jumbo v4, "jankLevel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, "jankLevel":I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_56

    goto :goto_54

    .line 268
    :pswitch_26
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z
    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusJankManager;->access$602(Lcom/android/server/am/OnePlusJankManager;Z)Z

    goto :goto_54

    .line 265
    :pswitch_2d
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->stopTraceForJank()V
    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$500(Lcom/android/server/am/OnePlusJankManager;)V

    .line 266
    goto :goto_54

    .line 261
    :pswitch_33
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v5, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->access$400(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 263
    goto :goto_54

    .line 256
    :pswitch_39
    # getter for: Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->access$200()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 257
    :try_start_3e
    iget-object v6, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->reportJankInternal(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->access$300(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 258
    monitor-exit v5

    .line 259
    goto :goto_54

    .line 258
    :catchall_45
    move-exception v6

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    throw v6

    .line 253
    :pswitch_48
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->updateOnlineConfig()V
    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$100(Lcom/android/server/am/OnePlusJankManager;)V

    .line 254
    goto :goto_54

    .line 250
    :pswitch_4e
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->updateOnlineConfig()V
    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$100(Lcom/android/server/am/OnePlusJankManager;)V

    .line 251
    nop

    .line 271
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method
