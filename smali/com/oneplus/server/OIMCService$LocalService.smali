.class public Lcom/oneplus/server/OIMCService$LocalService;
.super Ljava/lang/Object;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 657
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 705
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 706
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 713
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 714
    return-void
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I

    .line 661
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    .line 662
    return-void
.end method

.method public notifyOIMCAMSReady()V
    .registers 4

    .line 728
    const-string/jumbo v0, "notifyOIMCAMSReady start register func"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V

    .line 730
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V

    .line 731
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    const-wide/16 v1, 0x0

    # invokes: Lcom/oneplus/server/OIMCService;->initConfigTable(J)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$800(Lcom/oneplus/server/OIMCService;J)V

    .line 732
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->initMode(J)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$900(Lcom/oneplus/server/OIMCService;J)V

    .line 733
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->setupReceiver()V
    invoke-static {v0}, Lcom/oneplus/server/OIMCService;->access$1000(Lcom/oneplus/server/OIMCService;)V

    .line 734
    return-void
.end method

.method public notifySysModeChange(Ljava/lang/String;I)V
    .registers 4
    .param p1, "switchTo"    # Ljava/lang/String;
    .param p2, "reserved"    # I

    .line 666
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->notifySysModeChangeInner(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "func"    # Lcom/oneplus/oimc/IOPFunction;

    .line 671
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 672
    const/16 v1, 0xca

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 675
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 671
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "settingProviderKey"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 682
    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 685
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 681
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 686
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    return-void
.end method

.method public registerRemoteFunction(Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I

    .line 691
    new-instance v0, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRemoteFunc;-><init>()V

    .line 692
    .local v0, "func":Lcom/oneplus/oimc/IOPFunction;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 693
    const/16 v2, 0xca

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    .line 696
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 692
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 697
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 698
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 709
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 710
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 721
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 722
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 717
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 718
    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 725
    return-void
.end method

.method public updateOnlineConfig()V
    .registers 2

    .line 701
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->forceUpdateOnlineConfigImmediately()V

    .line 702
    return-void
.end method
