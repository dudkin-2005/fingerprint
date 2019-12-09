.class Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;
.super Landroid/os/Handler;
.source "OneHandedControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/onehand/OneHandedControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_INSTALL:I = 0x1

.field static final MSG_MODE_CHANGED:I = 0x4

.field static final MSG_OUTSIDE_SCREEN_TOUCH:I = 0x5

.field static final MSG_RECREATE_PANELS:I = 0x3

.field static final MSG_REMOVE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/os/Looper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    .line 99
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$400(Lcom/android/server/wm/onehand/OneHandedControlPanel;II)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-static {v0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$300(Lcom/android/server/wm/onehand/OneHandedControlPanel;Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 111
    goto :goto_0

    .line 107
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$200(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    .line 105
    goto :goto_0

    .line 101
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$000(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    .line 102
    nop

    .line 116
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
