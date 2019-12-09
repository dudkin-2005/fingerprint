.class Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
.super Landroid/os/Handler;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemQuickReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemQuickReplyHandler"
.end annotation


# static fields
.field static final MSG_OEM_ADD_BUTTON:I = 0x1

.field static final MSG_OEM_ADD_IME_CONTROLS_BUTTON:I = 0x3

.field static final MSG_OEM_HANDLE_EXIT_QUICK_REPLY:I = 0xa

.field static final MSG_OEM_HANDLE_SWITCH_IM_BUTTON:I = 0x8

.field static final MSG_OEM_REMOVE_BUTTON:I = 0x2

.field static final MSG_OEM_REMOVE_IME_CONTROLS_BUTTON:I = 0x4

.field static final MSG_OEM_SET_IME_BUTTON_ALPHA:I = 0x5

.field static final MSG_OEM_UPDATE_ALL_PARAM:I = 0x9

.field static final MSG_OEM_UPDATE_IME_CONTROLS_VIS:I = 0x7

.field static final MSG_OEM_UPDATE_IM_BOUND:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemQuickReply;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 831
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    .line 832
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 837
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_123

    .line 892
    :pswitch_8
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_123

    .line 895
    :try_start_c
    invoke-static {}, Lcom/android/server/am/OemQuickReply;->acquireBoost()V

    .line 897
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->access$400(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->exitQuickReply(Landroid/os/IBinder;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply;->setQuickReplyRunning(Z)V

    .line 899
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;
    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$400(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    # invokes: Lcom/android/server/am/OemQuickReply;->tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$1900(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/ActivityRecord;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    goto :goto_39

    .line 900
    :catch_31
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string v2, "exitQuickReply fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    goto/16 :goto_123

    .line 889
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->updateAllParam()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1800(Lcom/android/server/am/OemQuickReply;)V

    .line 890
    goto/16 :goto_123

    .line 876
    :pswitch_42
    const-string v0, "OemQuickReply"

    const-string/jumbo v1, "handling MSG_OEM_HANDLE_SWITCH_IM_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_6e

    .line 879
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1400(Lcom/android/server/am/OemQuickReply;)V

    .line 880
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, v1, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    # invokes: Lcom/android/server/am/OemQuickReply;->addIMEcontrolsButton(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$1300(Lcom/android/server/am/OemQuickReply;I)V

    .line 882
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_123

    .line 885
    :cond_6e
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->updateIMstack()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1600(Lcom/android/server/am/OemQuickReply;)V

    .line 887
    goto/16 :goto_123

    .line 872
    :pswitch_75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_82

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_83

    :cond_82
    const/4 v0, 0x4

    .line 873
    .local v0, "vis":I
    :goto_83
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->updateImeVis(I)V
    invoke-static {v1, v0}, Lcom/android/server/am/OemQuickReply;->access$1700(Lcom/android/server/am/OemQuickReply;I)V

    .line 874
    goto/16 :goto_123

    .line 869
    .end local v0    # "vis":I
    :pswitch_8a
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->updateIMstack()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1600(Lcom/android/server/am/OemQuickReply;)V

    .line 870
    goto/16 :goto_123

    .line 866
    :pswitch_91
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->setIMEButtonAlpha()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1500(Lcom/android/server/am/OemQuickReply;)V

    .line 867
    goto/16 :goto_123

    .line 863
    :pswitch_98
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1400(Lcom/android/server/am/OemQuickReply;)V

    .line 864
    goto/16 :goto_123

    .line 858
    :pswitch_9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_ac

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    :cond_ac
    move v0, v1

    .line 859
    .local v0, "imeHeight":I
    const-string v1, "OemQuickReply"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling MSG_OEM_ADD_IME_CONTROLS_BUTTON imeHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->addIMEcontrolsButton(I)V
    invoke-static {v1, v0}, Lcom/android/server/am/OemQuickReply;->access$1300(Lcom/android/server/am/OemQuickReply;I)V

    .line 861
    goto :goto_123

    .line 854
    .end local v0    # "imeHeight":I
    :pswitch_ca
    const-string v0, "OemQuickReply"

    const-string/jumbo v1, "handling MSG_OEM_REMOVE_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->removeAllButton()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1200(Lcom/android/server/am/OemQuickReply;)V

    .line 856
    goto :goto_123

    .line 839
    :pswitch_d8
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handling MSG_OEM_ADD_BUTTON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v2, v2, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_123

    .line 842
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1000(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 843
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_11d

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11d

    .line 845
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 846
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v1

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 848
    return-void

    .line 850
    :cond_11d
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->addIMButton()V
    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$1100(Lcom/android/server/am/OemQuickReply;)V

    .line 851
    .end local v0    # "globalConfig":Landroid/content/res/Configuration;
    nop

    .line 908
    :cond_123
    :goto_123
    return-void

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_ca
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_8a
        :pswitch_75
        :pswitch_42
        :pswitch_3b
        :pswitch_8
    .end packed-switch
.end method
