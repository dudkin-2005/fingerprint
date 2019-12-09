.class Lcom/android/server/pocket/PocketService$PocketHandler;
.super Landroid/os/Handler;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketHandler"
.end annotation


# static fields
.field public static final MSG_ADD_CALLBACK:I = 0x3

.field public static final MSG_DISPATCH_CALLBACKS:I = 0x2

.field public static final MSG_INTERACTIVE_CHANGED:I = 0x5

.field public static final MSG_REMOVE_CALLBACK:I = 0x4

.field public static final MSG_SENSOR_EVENT_LIGHT:I = 0x7

.field public static final MSG_SENSOR_EVENT_PROXIMITY:I = 0x6

.field public static final MSG_SET_LISTEN_EXTERNAL:I = 0x9

.field public static final MSG_SET_POCKET_LOCK_VISIBLE:I = 0xa

.field public static final MSG_SYSTEM_BOOTED:I = 0x1

.field public static final MSG_SYSTEM_READY:I = 0x0

.field public static final MSG_UNREGISTER_TIMEOUT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketService;Landroid/os/Looper;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 254
    invoke-static {}, Lcom/android/server/pocket/PocketService;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/pocket/PocketService;->access$1200(Lcom/android/server/pocket/PocketService;Z)V

    .line 252
    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/pocket/PocketService;->access$1100(Lcom/android/server/pocket/PocketService;Z)V

    .line 249
    goto :goto_0

    .line 245
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1000(Lcom/android/server/pocket/PocketService;)V

    .line 246
    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/SensorEvent;

    invoke-static {v0, p1}, Lcom/android/server/pocket/PocketService;->access$900(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    .line 243
    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/SensorEvent;

    invoke-static {v0, p1}, Lcom/android/server/pocket/PocketService;->access$800(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    .line 240
    goto :goto_0

    .line 236
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/pocket/PocketService;->access$700(Lcom/android/server/pocket/PocketService;Z)V

    .line 237
    goto :goto_0

    .line 233
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/pocket/IPocketCallback;

    invoke-static {v0, p1}, Lcom/android/server/pocket/PocketService;->access$600(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    .line 234
    goto :goto_0

    .line 230
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/pocket/IPocketCallback;

    invoke-static {v0, p1}, Lcom/android/server/pocket/PocketService;->access$500(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$400(Lcom/android/server/pocket/PocketService;)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$300(Lcom/android/server/pocket/PocketService;)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$200(Lcom/android/server/pocket/PocketService;)V

    .line 222
    nop

    .line 256
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
