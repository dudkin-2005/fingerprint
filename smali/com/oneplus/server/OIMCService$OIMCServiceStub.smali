.class final Lcom/oneplus/server/OIMCService$OIMCServiceStub;
.super Lcom/oneplus/os/IOIMCService$Stub;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OIMCServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 738
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Lcom/oneplus/os/IOIMCService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 771
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 773
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 5
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 750
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 752
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/OIMCService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->getFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1300(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .registers 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->getFuncStatus(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .registers 7
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I

    .line 743
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    .line 745
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 811
    new-instance v0, Lcom/oneplus/server/OIMCService$Shell;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {v0, v1}, Lcom/oneplus/server/OIMCService$Shell;-><init>(Lcom/oneplus/server/OIMCService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/server/OIMCService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 812
    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .registers 6
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 784
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRemoteAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$1100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    .line 787
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 778
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 780
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 5
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 757
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 759
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 5
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 764
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 766
    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .registers 5
    .param p1, "fName"    # Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    # invokes: Lcom/oneplus/server/OIMCService;->unBindRemoteAction(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1400(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    .line 803
    return-void
.end method
