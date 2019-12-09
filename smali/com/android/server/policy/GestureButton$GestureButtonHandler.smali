.class Lcom/android/server/policy/GestureButton$GestureButtonHandler;
.super Landroid/os/Handler;
.source "GestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GestureButton;Landroid/os/Looper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 104
    :pswitch_0
    invoke-static {}, Lcom/android/server/policy/GestureButton;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GestureButton"

    const-string v3, "MSG_SEND_LONG_PRESS"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1, v2}, Lcom/android/server/policy/GestureButton;->access$102(Lcom/android/server/policy/GestureButton;Z)Z

    .line 106
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1}, Lcom/android/server/policy/GestureButton;->access$200(Lcom/android/server/policy/GestureButton;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 107
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1}, Lcom/android/server/policy/GestureButton;->access$600(Lcom/android/server/policy/GestureButton;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/android/internal/util/aospextended/TaskUtils;->toggleLastApp(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {}, Lcom/android/server/policy/GestureButton;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SEND_KEY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {v4}, Lcom/android/server/policy/GestureButton;->access$400(Lcom/android/server/policy/GestureButton;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1, v2}, Lcom/android/server/policy/GestureButton;->access$102(Lcom/android/server/policy/GestureButton;Z)Z

    .line 100
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1}, Lcom/android/server/policy/GestureButton;->access$200(Lcom/android/server/policy/GestureButton;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 101
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    iget-object v0, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {v0}, Lcom/android/server/policy/GestureButton;->access$400(Lcom/android/server/policy/GestureButton;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/policy/GestureButton;->access$500(Lcom/android/server/policy/GestureButton;I)V

    .line 102
    goto :goto_0

    .line 92
    :pswitch_2
    invoke-static {}, Lcom/android/server/policy/GestureButton;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GestureButton"

    const-string v3, "MSG_SEND_SWITCH_KEY"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1, v2}, Lcom/android/server/policy/GestureButton;->access$102(Lcom/android/server/policy/GestureButton;Z)Z

    .line 94
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1}, Lcom/android/server/policy/GestureButton;->access$200(Lcom/android/server/policy/GestureButton;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 95
    iget-object p1, p0, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->this$0:Lcom/android/server/policy/GestureButton;

    invoke-static {p1}, Lcom/android/server/policy/GestureButton;->access$300(Lcom/android/server/policy/GestureButton;)V

    .line 96
    nop

    .line 110
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
