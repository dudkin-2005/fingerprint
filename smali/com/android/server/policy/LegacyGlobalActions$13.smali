.class Lcom/android/server/policy/LegacyGlobalActions$13;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 798
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1300(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_0

    .line 806
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1200(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 807
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 808
    goto :goto_0

    .line 800
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 802
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/LegacyGlobalActions;->access$1102(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)Lcom/android/internal/globalactions/ActionsDialog;

    .line 813
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
