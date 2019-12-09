.class final Lcom/android/server/policy/ScreenDecor$ScreenHandler;
.super Landroid/os/Handler;
.source "ScreenDecor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ScreenDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenDecor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenDecor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/ScreenDecor;

    .line 232
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 240
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->doExpandScreenDecor()V

    goto :goto_12

    .line 237
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->refreshScreenDecor()V

    .line 238
    nop

    .line 243
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
