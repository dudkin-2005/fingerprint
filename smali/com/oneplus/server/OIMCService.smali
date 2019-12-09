.class public final Lcom/oneplus/server/OIMCService;
.super Lcom/android/server/SystemService;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/OIMCService$OIMCServiceStub;,
        Lcom/oneplus/server/OIMCService$LocalService;,
        Lcom/oneplus/server/OIMCService$Shell;,
        Lcom/oneplus/server/OIMCService$SyncRunnable;,
        Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;
    }
.end annotation


# static fields
.field private static final BOOT_APPLY_LOCAL_RULE_DELAY:I = 0xfa0

.field private static final BOOT_SYS_MODE_ENTER_DELAY:I = 0x1388

.field private static final NO_DELAY:I = 0x0

.field private static final OIMC_ONLINE_CONFIG_NAME:Ljava/lang/String; = "OIMC"

.field private static final TAG:Ljava/lang/String; = "OIMC"

.field private static final WRITE_CONFIG_DELAY:I = 0x1388


# instance fields
.field fm:Lcom/oneplus/server/FunctionManager;

.field mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

.field mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mTM:Lcom/oneplus/server/TriggerManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mm:Lcom/oneplus/server/ModeManager;

.field rm:Lcom/oneplus/server/RuleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Lcom/oneplus/server/OIMCService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$3;-><init>(Lcom/oneplus/server/OIMCService;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/oneplus/server/ModeManager;

    invoke-direct {v0}, Lcom/oneplus/server/ModeManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    .line 87
    new-instance v0, Lcom/oneplus/server/FunctionManager;

    invoke-direct {v0}, Lcom/oneplus/server/FunctionManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    .line 88
    new-instance v0, Lcom/oneplus/server/RuleManager;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/server/RuleManager;-><init>(Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->rm:Lcom/oneplus/server/RuleManager;

    .line 89
    new-instance v0, Lcom/oneplus/server/TriggerManager;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    iget-object v3, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->rm:Lcom/oneplus/server/RuleManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/server/TriggerManager;-><init>(Landroid/content/Context;Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;Lcom/oneplus/server/RuleManager;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    .line 90
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserManager:Landroid/os/UserManager;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OIMC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/oneplus/server/OIMCService$1;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/server/OIMCService$1;-><init>(Lcom/oneplus/server/OIMCService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->initPredefinedModes()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OIMCService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;

    .line 62
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/server/OIMCService;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;

    .line 62
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->setupReceiver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->getFuncStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->getFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->unBindRemoteAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->notifySysModeChangeInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/server/OIMCService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->initConfigTable(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/server/OIMCService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->initMode(J)V

    return-void
.end method

.method private actionConfigByCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 419
    const/16 v1, 0x69

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 422
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method

.method private addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 7
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 400
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 401
    const/16 v1, 0xd0

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 404
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method

.method private addFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 427
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 428
    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 431
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 427
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 432
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    return-void
.end method

.method private addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 382
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 383
    const/16 v1, 0xd5

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 386
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 382
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method private bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 445
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 446
    const/16 v1, 0xd7

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 449
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 445
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 645
    const-string v0, "OIMC commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "  dump"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "    Print the mode, function, rules info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string v0, "  rule [add|remove] [function name] [on|off] [trigger mode ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string v0, "    adding a rule for the specified function to be on/off by trigger modes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v0, "  mode [enter|exit] [mode name]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v0, "    note: this is test command during development phase, will remove soon"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "  config [function name] [extra string]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private getFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 470
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 472
    .local v0, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/16 v1, 0x2714

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 473
    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    return-object v1

    .line 474
    :cond_1a
    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getFuncStatus(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 463
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 465
    .local v0, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/16 v1, 0x2713

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 466
    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private initConfigTable(J)V
    .registers 8
    .param p1, "delay"    # J

    .line 124
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    return-void
.end method

.method private initMode(J)V
    .registers 20
    .param p1, "delay"    # J

    .line 152
    const-string v0, "SystemMode"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/oneplus/server/MsgObjectArg;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 153
    .local v0, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object v6, v0

    move-wide/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/server/OIMCService;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    .line 155
    const-string v2, "User0"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/server/MsgObjectArg;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 156
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object v14, v0

    move-wide/from16 v15, p1

    invoke-virtual/range {v10 .. v16}, Lcom/oneplus/server/OIMCService;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    .line 157
    return-void
.end method

.method private initOnlineConfig()V
    .registers 6

    .line 160
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;-><init>(Lcom/oneplus/server/OIMCService;)V

    const-string v4, "OIMC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 162
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 163
    return-void
.end method

.method private initPredefinedModes()V
    .registers 9

    .line 131
    sget-object v0, Lcom/oneplus/server/ModeManager;->SystemModes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 132
    .local v4, "sysMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v6, Lcom/oneplus/server/SceneMode;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 131
    .end local v4    # "sysMode":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 135
    :cond_17
    sget-object v0, Lcom/oneplus/oimc/OIMCMode;->SceneModes:[Ljava/lang/String;

    array-length v1, v0

    :goto_1a
    const/4 v3, 0x2

    if-ge v2, v1, :cond_2c

    aget-object v4, v0, v2

    .line 136
    .local v4, "sceneMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v6, Lcom/oneplus/server/SceneMode;

    invoke-direct {v6, v4, v3}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 135
    .end local v4    # "sceneMode":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 138
    :cond_2c
    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v0, :cond_3c

    .line 139
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v1, Lcom/oneplus/server/SceneMode;

    const-string v2, "TestMode"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 141
    :cond_3c
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->setupExistingUserModes()V

    .line 142
    return-void
.end method

.method private notifyModeChangeInner(Ljava/lang/String;I)V
    .registers 7
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I

    .line 355
    const-string v0, "OIMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notified , mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changeTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "msg":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_25

    .line 358
    const/4 v0, 0x1

    goto :goto_29

    .line 359
    :cond_25
    const/4 v1, 0x2

    if-ne p2, v1, :cond_29

    .line 360
    const/4 v0, 0x2

    .line 362
    :cond_29
    :goto_29
    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 363
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 362
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 364
    return-void
.end method

.method private notifySysModeChangeInner(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notified , sys mode switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 369
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 368
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 370
    return-void
.end method

.method private removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 7
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 409
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 410
    const/16 v1, 0xd1

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 413
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 409
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method private removeFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 436
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 437
    const/16 v1, 0xd4

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 440
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 441
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    return-void
.end method

.method private removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 391
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 392
    const/16 v1, 0xd6

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 395
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method private runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 6
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 373
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 374
    const/16 v1, 0xd9

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 377
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void
.end method

.method private scheduleSaveConfig(J)V
    .registers 7
    .param p1, "delay"    # J

    .line 533
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 534
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 540
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 541
    return-void
.end method

.method private scheduleSaveConfigImmediately()V
    .registers 3

    .line 498
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->scheduleSaveConfig(J)V

    .line 499
    return-void
.end method

.method private setupExistingUserModes()V
    .registers 8

    .line 145
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 147
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v4, Lcom/oneplus/server/SceneMode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 148
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 149
    :cond_36
    return-void
.end method

.method private setupReceiver()V
    .registers 4

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method private unBindRemoteAction(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 455
    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 458
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 454
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 459
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 479
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 486
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 487
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    .line 334
    move-object/from16 v1, p3

    if-eqz v1, :cond_48

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_48

    .line 337
    aget-object v4, v1, v3

    .line 338
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "dump"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    .line 339
    iget-object v5, v0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    const/16 v7, 0x3f

    move-object/from16 v8, p2

    invoke-virtual {v5, v7, v6, v8}, Lcom/oneplus/server/TriggerManager;->dumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V

    .line 340
    return-void

    .line 342
    :cond_20
    move-object/from16 v8, p2

    new-instance v5, Lcom/oneplus/server/OIMCService$Shell;

    invoke-direct {v5, v0}, Lcom/oneplus/server/OIMCService$Shell;-><init>(Lcom/oneplus/server/OIMCService;)V

    .line 343
    .local v5, "shell":Lcom/oneplus/server/OIMCService$Shell;
    iput v2, v5, Lcom/oneplus/server/OIMCService$Shell;->userId:I

    .line 344
    array-length v7, v1

    sub-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    .line 345
    .local v7, "newArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v10, v1

    sub-int/2addr v10, v3

    invoke-static {v1, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v10, v0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    new-instance v14, Landroid/os/ResultReceiver;

    invoke-direct {v14, v6}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v9, v5

    move-object/from16 v12, p1

    move-object v6, v14

    move-object v14, v7

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/server/OIMCService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 348
    return-void

    .line 352
    .end local v2    # "userId":I
    .end local v3    # "i":I
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "shell":Lcom/oneplus/server/OIMCService$Shell;
    .end local v7    # "newArgs":[Ljava/lang/String;
    :cond_48
    move-object/from16 v8, p2

    return-void
.end method

.method public flushMessage()Z
    .registers 2

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->flushMessage(Z)Z

    move-result v0

    return v0
.end method

.method public flushMessage(Z)Z
    .registers 10
    .param p1, "testMode"    # Z

    .line 305
    new-instance v0, Lcom/oneplus/server/OIMCService$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$SyncRunnable;-><init>(Lcom/oneplus/server/OIMCService;)V

    .line 307
    .local v0, "sync":Lcom/oneplus/server/OIMCService$SyncRunnable;
    const/16 v1, 0x2710

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_23

    .line 308
    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    new-instance v6, Lcom/oneplus/server/OPFunction;

    const-string/jumbo v7, "sync"

    invoke-direct {v6, v7, v0, v2}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    invoke-virtual {v5, v1, v3, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a

    .line 313
    :cond_23
    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    new-instance v6, Lcom/oneplus/server/OPFunction;

    const-string/jumbo v7, "sync"

    invoke-direct {v6, v7, v0, v2}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    invoke-virtual {v5, v1, v3, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :goto_3a
    move v1, v2

    .line 320
    .local v1, "ret":Z
    :try_start_3b
    monitor-enter v0
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3c} :catch_4d
    .catchall {:try_start_3b .. :try_end_3c} :catchall_4b

    .line 321
    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$SyncRunnable;->getStatus()Z

    move-result v2

    if-nez v2, :cond_46

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3c

    .line 324
    :cond_46
    monitor-exit v0

    .line 329
    return v1

    .line 324
    :catchall_48
    move-exception v2

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4b} :catch_4d
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 329
    :catchall_4b
    move-exception v2

    goto :goto_52

    .line 325
    :catch_4d
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4b

    .line 327
    const/4 v1, 0x0

    .line 329
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_52
    return v1
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/server/OIMCService$2;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCService$2;-><init>(Lcom/oneplus/server/OIMCService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 120
    return-void
.end method

.method onShellCommand(Lcom/oneplus/server/OIMCService$Shell;Ljava/lang/String;)I
    .registers 15
    .param p1, "shell"    # Lcom/oneplus/server/OIMCService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 560
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c1

    const-string/jumbo v1, "rule"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 563
    monitor-enter p0

    .line 564
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 566
    .local v3, "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "ruleAction":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_be

    .line 569
    .local v5, "funcName":Ljava/lang/String;
    :try_start_29
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->toFuncAction(Ljava/lang/String;)I

    move-result v6

    .line 570
    .local v6, "funcAction":I
    if-eqz v1, :cond_a7

    if-eqz v5, :cond_a7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a7

    const-string v7, "add"

    .line 571
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    const-string/jumbo v7, "remove"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 572
    :cond_49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 575
    .local v8, "arg":Ljava/lang/String;
    :cond_52
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-nez v9, :cond_52

    .line 578
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a7

    .line 579
    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 580
    .local v9, "triggerModes":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[cmd] rule "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for func "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 581
    const-string v10, "add"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 582
    new-instance v10, Lcom/oneplus/oimc/OIMCRule;

    invoke-direct {v10, v5, v6, v9, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/server/OIMCService;->addFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_a7

    .line 584
    :cond_9f
    new-instance v10, Lcom/oneplus/oimc/OIMCRule;

    invoke-direct {v10, v5, v6, v9, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/server/OIMCService;->removeFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_a7} :catch_ad
    .catchall {:try_start_29 .. :try_end_a7} :catchall_ab

    .line 592
    .end local v6    # "funcAction":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "triggerModes":[Ljava/lang/String;
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_be

    .line 593
    goto :goto_b7

    .line 592
    :catchall_ab
    move-exception v2

    goto :goto_ba

    .line 588
    :catch_ad
    move-exception v6

    .line 589
    .local v6, "e":Ljava/lang/Exception;
    :try_start_ae
    const-string v7, "command error, please check help"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_ab

    .line 590
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_a7

    .line 594
    .end local v1    # "ruleAction":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "funcName":Ljava/lang/String;
    :goto_b7
    :try_start_b7
    monitor-exit p0

    goto/16 :goto_186

    .line 592
    .restart local v1    # "ruleAction":Ljava/lang/String;
    .restart local v3    # "token":J
    .restart local v5    # "funcName":Ljava/lang/String;
    :goto_ba
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 594
    .end local v1    # "ruleAction":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "funcName":Ljava/lang/String;
    :catchall_be
    move-exception v1

    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_be

    throw v1

    .line 595
    :cond_c1
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_128

    const-string/jumbo v1, "mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 596
    monitor-enter p0

    .line 597
    :try_start_cf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 598
    .restart local v3    # "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_125

    .line 601
    .local v5, "mode":Ljava/lang/String;
    if-eqz v1, :cond_11f

    if-eqz v5, :cond_11f

    :try_start_df
    const-string v6, "enter"

    .line 602
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ef

    const-string v6, "exit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 603
    :cond_ef
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cmd] mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 604
    const-string v6, "enter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 605
    const/4 v6, 0x1

    goto :goto_116

    :cond_115
    const/4 v6, 0x2

    .line 604
    :goto_116
    invoke-direct {p0, v5, v6}, Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V
    :try_end_119
    .catchall {:try_start_df .. :try_end_119} :catchall_11a

    goto :goto_11f

    .line 608
    :catchall_11a
    move-exception v2

    :try_start_11b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_11f
    :goto_11f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    nop

    .line 610
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "mode":Ljava/lang/String;
    monitor-exit p0

    goto :goto_186

    :catchall_125
    move-exception v1

    monitor-exit p0
    :try_end_127
    .catchall {:try_start_11b .. :try_end_127} :catchall_125

    throw v1

    .line 611
    :cond_128
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_14f

    const-string/jumbo v1, "test"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 612
    monitor-enter p0

    .line 613
    :try_start_136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_13a
    .catchall {:try_start_136 .. :try_end_13a} :catchall_14c

    .line 615
    .restart local v3    # "token":J
    :try_start_13a
    invoke-static {p0}, Lcom/oneplus/server/OIMCTest;->getInstance(Lcom/oneplus/server/OIMCService;)Lcom/oneplus/server/OIMCTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OIMCTest;->startTest()V
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_147

    .line 617
    :try_start_141
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    nop

    .line 619
    .end local v3    # "token":J
    monitor-exit p0

    goto :goto_186

    .line 617
    .restart local v3    # "token":J
    :catchall_147
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 619
    .end local v3    # "token":J
    :catchall_14c
    move-exception v1

    monitor-exit p0
    :try_end_14e
    .catchall {:try_start_141 .. :try_end_14e} :catchall_14c

    throw v1

    .line 621
    :cond_14f
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_18a

    const-string v1, "config"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 622
    monitor-enter p0

    .line 623
    :try_start_15c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 624
    .restart local v3    # "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "funcName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_168
    .catchall {:try_start_15c .. :try_end_168} :catchall_187

    .line 627
    .local v5, "extra":Ljava/lang/String;
    if-eqz v1, :cond_181

    if-eqz v5, :cond_181

    .line 628
    move-object v6, v5

    .line 629
    .local v6, "obj":Ljava/lang/Object;
    :try_start_16d
    invoke-direct {p0, v1, v6}, Lcom/oneplus/server/OIMCService;->actionConfigByCmd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_173
    .catchall {:try_start_16d .. :try_end_170} :catchall_171

    .line 629
    .end local v6    # "obj":Ljava/lang/Object;
    goto :goto_181

    .line 635
    :catchall_171
    move-exception v2

    goto :goto_17d

    .line 631
    :catch_173
    move-exception v6

    .line 632
    .local v6, "e":Ljava/lang/Exception;
    :try_start_174
    const-string v7, "command error, please check help"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17c
    .catchall {:try_start_174 .. :try_end_17c} :catchall_171

    .line 633
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_181

    .line 635
    :goto_17d
    :try_start_17d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_181
    :goto_181
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    nop

    .line 637
    .end local v1    # "funcName":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "extra":Ljava/lang/String;
    monitor-exit p0

    .line 641
    :goto_186
    return v2

    .line 637
    :catchall_187
    move-exception v1

    monitor-exit p0
    :try_end_189
    .catchall {:try_start_17d .. :try_end_189} :catchall_187

    throw v1

    .line 639
    :cond_18a
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OIMCService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onStart()V
    .registers 3

    .line 112
    new-instance v0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$OIMCServiceStub;-><init>(Lcom/oneplus/server/OIMCService;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    .line 113
    const-string/jumbo v0, "oimc"

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    new-instance v1, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCService$LocalService;-><init>(Lcom/oneplus/server/OIMCService;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->initOnlineConfig()V

    .line 116
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "func"    # Lcom/oneplus/oimc/IOPFunction;

    .line 503
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 504
    const/16 v1, 0xca

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 507
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 503
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "settingProviderKey"    # Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 514
    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 517
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 513
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 518
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    return-void
.end method

.method public registerRemoteFunction(Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I

    .line 523
    new-instance v0, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRemoteFunc;-><init>()V

    .line 524
    .local v0, "func":Lcom/oneplus/oimc/IOPFunction;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 525
    const/16 v2, 0xca

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    .line 528
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 524
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 529
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .registers 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 483
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 490
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 491
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .registers 2
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 494
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 495
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)Z
    .registers 8
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v0

    .line 215
    .local v0, "mid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_1d

    .line 216
    monitor-enter p0

    .line 217
    :try_start_c
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 218
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 219
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1

    .line 220
    :cond_1d
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_2b

    .line 221
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    move-object v2, p4

    check-cast v2, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/server/TriggerManager;->getSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v1

    return v1

    .line 222
    :cond_2b
    const/16 v1, 0x2713

    if-ne v0, v1, :cond_39

    .line 223
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    move-object v2, p4

    check-cast v2, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/server/TriggerManager;->getFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v1

    return v1

    .line 224
    :cond_39
    const/16 v1, 0x2714

    if-ne v0, v1, :cond_47

    .line 225
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    move-object v2, p4

    check-cast v2, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/server/TriggerManager;->getFuncConfig(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v1

    return v1

    .line 228
    :cond_47
    const/4 v1, 0x0

    return v1
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)Z
    .registers 10
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 232
    invoke-static {p1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v0

    .line 233
    .local v0, "mid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_1d

    .line 234
    monitor-enter p0

    .line 235
    :try_start_c
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 236
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 237
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1

    .line 240
    :cond_1d
    return v1
.end method
