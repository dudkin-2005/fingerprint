.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1, v1}, Lcom/android/server/PermissionDialog;->access$002(Lcom/android/server/PermissionDialog;Z)Z

    .line 67
    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1, v2}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;Z)V

    goto :goto_2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    .line 79
    nop

    .line 80
    nop

    .line 83
    move v8, v1

    :goto_0
    move v7, v2

    goto :goto_1

    .line 76
    :pswitch_0
    nop

    .line 77
    nop

    .line 83
    move v8, v0

    goto :goto_0

    .line 73
    :pswitch_1
    nop

    .line 74
    nop

    .line 83
    move v8, v0

    move v7, v1

    :goto_1
    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$600(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)I

    move-result v4

    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)I

    move-result v5

    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$500(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 84
    iget-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {p1}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 86
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
