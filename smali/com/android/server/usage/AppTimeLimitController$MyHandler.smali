.class Lcom/android/server/usage/AppTimeLimitController$MyHandler;
.super Landroid/os/Handler;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CHECK_TIMEOUT:I = 0x1

.field static final MSG_INFORM_LISTENER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    invoke-static {v0, p1}, Lcom/android/server/usage/AppTimeLimitController;->access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 139
    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppTimeLimitController;->checkTimeout(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 136
    nop

    .line 144
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method