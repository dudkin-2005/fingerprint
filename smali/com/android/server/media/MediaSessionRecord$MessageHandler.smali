.class Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x9

.field private static final MSG_SEND_EVENT:I = 0x6

.field private static final MSG_UPDATE_EXTRAS:I = 0x5

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field private static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field private static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1443
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1444
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1445
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    .line 1474
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4300(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3f

    .line 1471
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1472
    goto :goto_3f

    .line 1469
    :pswitch_12
    goto :goto_3f

    .line 1465
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$4200(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1466
    goto :goto_3f

    .line 1462
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4100(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1463
    goto :goto_3f

    .line 1459
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4000(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1460
    goto :goto_3f

    .line 1456
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1457
    goto :goto_3f

    .line 1453
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3800(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1454
    goto :goto_3f

    .line 1450
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)V

    .line 1451
    nop

    .line 1476
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_13
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public post(I)V
    .registers 3
    .param p1, "what"    # I

    .line 1479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1480
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1484
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 1487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1488
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1490
    return-void
.end method
