.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .locals 1

    .line 796
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 797
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 798
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 801
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 815
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;I)V

    .line 816
    goto :goto_0

    .line 812
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)V

    .line 813
    goto :goto_0

    .line 809
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;I)V

    .line 810
    goto :goto_0

    .line 806
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$400(Lcom/android/server/power/Notifier;)V

    .line 807
    goto :goto_0

    .line 803
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$500(Lcom/android/server/power/Notifier;)V

    .line 804
    nop

    .line 821
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method