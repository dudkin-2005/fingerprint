.class public Lcom/oneplus/server/OIMCTest;
.super Ljava/lang/Object;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/OIMCTest$TestExistingRule;,
        Lcom/oneplus/server/OIMCTest$testRepeatFunc2;,
        Lcom/oneplus/server/OIMCTest$testRepeatFunc;,
        Lcom/oneplus/server/OIMCTest$testOneshotFunc2;,
        Lcom/oneplus/server/OIMCTest$testOneshotFunc;,
        Lcom/oneplus/server/OIMCTest$testFuncChange;,
        Lcom/oneplus/server/OIMCTest$testModeStatus;,
        Lcom/oneplus/server/OIMCTest$checkSysInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/oneplus/server/OIMCTest;


# instance fields
.field private final OIMCTestMode:Ljava/lang/String;

.field private final OIMCTestMode2:Ljava/lang/String;

.field private final OIMCTestMode3:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private final TestOneshotFunc:Ljava/lang/String;

.field private final TestOneshotFunc2:Ljava/lang/String;

.field private final TestRepeatFunc:Ljava/lang/String;

.field private final TestRepeatFunc2:Ljava/lang/String;

.field private inTesting:Z

.field private isRegistered:Z

.field private final name:Ljava/lang/String;

.field private oimc:Lcom/oneplus/server/OIMCService;

.field private final printDebug:Z

.field private testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

.field private testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

.field private testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

.field private testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .registers 3
    .param p1, "oimcService"    # Lcom/oneplus/server/OIMCService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->printDebug:Z

    .line 34
    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->name:Ljava/lang/String;

    .line 35
    const-string v0, "OIMCTestMode"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode:Ljava/lang/String;

    .line 36
    const-string v0, "OIMCTestMode2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode2:Ljava/lang/String;

    .line 37
    const-string v0, "OIMCTestMode3"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode3:Ljava/lang/String;

    .line 38
    const-string v0, "TestOneshotFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc:Ljava/lang/String;

    .line 39
    const-string v0, "TestOneshotFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc2:Ljava/lang/String;

    .line 40
    const-string v0, "TestRepeatFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc:Ljava/lang/String;

    .line 41
    const-string v0, "TestRepeatFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc2:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OIMCTest;ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .registers 4
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;
    .param p3, "x3"    # Lcom/oneplus/server/MsgObjectArg;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/server/OIMCTest;)Lcom/oneplus/server/OIMCService;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/server/OIMCTest;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->functionTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->runRuleTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleConfigTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->modeChangeTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleAddRemoveTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/server/OIMCTest;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->registerFuncsAndModes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/server/OIMCTest;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->exitTestMode()V

    return-void
.end method

.method private checkContainedFuncs([Ljava/lang/String;)Z
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 108
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$1;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 124
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 125
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    return v4
.end method

.method private checkContainedModes([Ljava/lang/String;)Z
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 132
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 133
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 149
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 150
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    return v4
.end method

.method private checkModePriority(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prio"    # I

    .line 164
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 165
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 166
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$3;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$3;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 177
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    new-instance v4, Lcom/oneplus/server/OIMCTest$1checkModePrio;

    invoke-direct {v4, p0, p1, p2}, Lcom/oneplus/server/OIMCTest$1checkModePrio;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 178
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    return v4
.end method

.method private checkRegisteredFunction(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 276
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 277
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$5;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$5;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 288
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 289
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    return v4
.end method

.method private clearOIMCTestModes()Z
    .registers 11

    .line 237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 238
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 239
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$4;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$4;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 255
    .local v2, "clear":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 258
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v5, "SystemMode"

    .line 260
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 258
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 262
    new-instance v3, Lcom/oneplus/server/OIMCTest$testModeStatus;

    new-array v5, v6, [Ljava/lang/String;

    const-string v7, "OIMCTestMode"

    const-string v8, "OIMCTestMode2"

    const-string v9, "OIMCTestMode3"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x55

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 265
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v3, p0, v5, v7, v8}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 266
    .local v3, "tst":Lcom/oneplus/server/OIMCTest$testModeStatus;
    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v5

    if-nez v5, :cond_48

    .line 267
    return v6

    .line 269
    :cond_48
    return v4
.end method

.method private dumpAllSysInfo()V
    .registers 7

    .line 70
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 71
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2712

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 72
    const/16 v1, 0x3f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 73
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 74
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private enterTestMode()V
    .registers 4

    .line 2470
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Enter OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 2472
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestMode"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2471
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2473
    return-void
.end method

.method private exitTestMode()V
    .registers 5

    .line 2476
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Exit OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2478
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestMode"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2477
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 2480
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->flushMessage()Z

    .line 2481
    return-void
.end method

.method private functionTest()Z
    .registers 8

    .line 529
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting functionTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v0, "    functionTest"

    .line 531
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 532
    .local v1, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 534
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 535
    const/16 v3, 0x68

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 536
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 535
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 538
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkConfigStatus(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 539
    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 540
    return v5

    .line 544
    :cond_45
    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    return v6
.end method

.method public static declared-synchronized getInstance(Lcom/oneplus/server/OIMCService;)Lcom/oneplus/server/OIMCTest;
    .registers 3
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    const-class v0, Lcom/oneplus/server/OIMCTest;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/oneplus/server/OIMCTest;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCTest;-><init>(Lcom/oneplus/server/OIMCService;)V

    sput-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    .line 55
    :cond_e
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "service":Lcom/oneplus/server/OIMCService;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRuleCount()I
    .registers 6

    .line 902
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 904
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 905
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$6;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$6;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 912
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 913
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    return v3
.end method

.method private handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .registers 8
    .param p1, "arg1"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 63
    const/16 v0, 0x2711

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    iput v0, p2, Landroid/os/Message;->what:I

    .line 64
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 65
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v1, p2, Landroid/os/Message;->what:I

    iget v2, p2, Landroid/os/Message;->arg1:I

    iget v3, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private modeChangeTest()Z
    .registers 14

    .line 2338
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting modeChangeTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const-string v0, "    modeChangeTest"

    .line 2340
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 2341
    .local v1, "rinfo":I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2342
    .local v2, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 2343
    .local v3, "arg":Lcom/oneplus/server/MsgObjectArg;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 2345
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    .line 2346
    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v6, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2347
    return v5

    .line 2351
    :cond_2a
    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {p0, v0, v4, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2354
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 2355
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 2354
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2356
    new-instance v4, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v6, "OIMCTestMode"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "OIMCTestMode2"

    const-string v9, "OIMCTestMode3"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2359
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v4, p0, v6, v8, v9}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 2360
    .local v4, "tst":Lcom/oneplus/server/OIMCTest$testModeStatus;
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v6

    if-nez v6, :cond_69

    .line 2361
    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2362
    return v5

    .line 2365
    :cond_69
    const-string v6, "MODE_ENTER"

    const-string v8, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v8, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2368
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "SystemMode"

    .line 2369
    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    const-string v10, "OIMCTestMode"

    invoke-virtual {v9, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    .line 2368
    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2370
    new-instance v8, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v9, "OIMCTestMode"

    const-string v10, "SystemMode"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "OIMCTestMode2"

    const-string v11, "OIMCTestMode3"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10, v5}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v8

    .line 2375
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_a8

    .line 2376
    const-string v6, "MODE_SWITCH test bewteen SystemMode and"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2377
    return v5

    .line 2380
    :cond_a8
    const-string v8, "MODE_SWITCH test bewteen SystemMode and"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2383
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "SystemMode"

    .line 2384
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2383
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2385
    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode"

    const-string v11, "SystemMode"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode2"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11, v5}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    .line 2390
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_e1

    .line 2391
    const-string v6, "MODE_EXIT test for "

    const-string v7, "SystemMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2392
    return v5

    .line 2395
    :cond_e1
    const-string v9, "MODE_EXIT test for "

    const-string v10, "SystemMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2398
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode2"

    .line 2399
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2398
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2400
    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode3"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2403
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    .line 2404
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_120

    .line 2405
    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2406
    return v5

    .line 2409
    :cond_120
    const-string v9, "MODE_ENTER"

    const-string v10, "OIMCTestMode2"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2412
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    .line 2413
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2412
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2414
    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2417
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    .line 2418
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_15f

    .line 2419
    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2420
    return v5

    .line 2423
    :cond_15f
    const-string v9, "MODE_EXIT"

    const-string v10, "OIMCTestMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2426
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "OIMCTestMode2"

    .line 2427
    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    .line 2426
    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2428
    new-instance v8, Lcom/oneplus/server/OIMCTest$testModeStatus;

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2431
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v8

    .line 2432
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_19c

    .line 2433
    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2434
    return v5

    .line 2437
    :cond_19c
    const-string v8, "MODE_EXIT"

    const-string v9, "OIMCTestMode2"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2440
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    .line 2443
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2440
    invoke-direct {p0, v9, v6, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2444
    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v9, v6}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1c1

    .line 2445
    const-string v6, "MODE_CONFIG priority 3"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2446
    return v5

    .line 2449
    :cond_1c1
    const-string v6, "MODE_CONFIG priority 3"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2451
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    const-string v8, "OIMCTestMode"

    .line 2454
    invoke-virtual {v3, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 2451
    invoke-direct {p0, v6, v7, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2455
    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v6, v7}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1e5

    .line 2456
    const-string v6, "MODE_CONFIG priority 1"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2457
    return v5

    .line 2460
    :cond_1e5
    const-string v5, "MODE_CONFIG priority 1"

    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2461
    return v7
.end method

.method private printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "success"    # Z

    .line 429
    if-eqz p4, :cond_29

    .line 430
    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 432
    :cond_29
    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_78
    return-void
.end method

.method private registerFuncsAndModes()Z
    .registers 9

    .line 439
    monitor-enter p0

    .line 440
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 441
    monitor-exit p0

    return v1

    .line 442
    :cond_8
    iput-boolean v1, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    .line 443
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1bb

    .line 445
    const-string v0, "OIMCTest"

    const-string v2, "  ================= Registering OIMCTest modes and functions ================="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v0, "    registerFuncsAndModes"

    .line 447
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 448
    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 449
    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    .line 450
    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    .line 452
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 454
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/16 v3, 0xc9

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v6, "OIMCTestMode"

    invoke-direct {v5, v6, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 455
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 454
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 456
    const-string v4, "OIMCTestMode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 457
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    return v6

    .line 461
    :cond_5e
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v7, "OIMCTestMode2"

    invoke-direct {v5, v7, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 464
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 463
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 465
    const-string v4, "OIMCTestMode2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 466
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode2"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    return v6

    .line 470
    :cond_8b
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode2"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 472
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    new-instance v4, Lcom/oneplus/server/SceneMode;

    const-string v5, "OIMCTestMode3"

    invoke-direct {v4, v5, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 473
    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 472
    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 474
    const-string v3, "OIMCTestMode3"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 475
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode3"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    return v6

    .line 479
    :cond_b8
    const-string v3, "Register mode"

    const-string v4, "OIMCTestMode3"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    const/16 v3, 0xca

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 484
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 481
    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 485
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 486
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    return v6

    .line 490
    :cond_f4
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 495
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 492
    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 496
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_132

    .line 497
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    return v6

    .line 501
    :cond_132
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 503
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    .line 506
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 503
    const/4 v7, 0x2

    invoke-direct {p0, v4, v7, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 507
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_171

    .line 508
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 509
    return v6

    .line 512
    :cond_171
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    .line 517
    # invokes: Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->getName()Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 514
    invoke-direct {p0, v3, v7, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 518
    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    # invokes: Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->getName()Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1af

    .line 519
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    # invokes: Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->getName()Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 520
    return v6

    .line 523
    :cond_1af
    const-string v3, "Register function"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    # invokes: Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->getName()Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    return v1

    .line 443
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v2    # "arg":Lcom/oneplus/server/MsgObjectArg;
    :catchall_1bb
    move-exception v0

    :try_start_1bc
    monitor-exit p0
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    throw v0
.end method

.method private ruleAddRemoveTest()Z
    .registers 19

    .line 1870
    move-object/from16 v6, p0

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting ruleAddRemoveTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v7, "    ruleAddRemoveTest"

    .line 1873
    .local v7, "prefix":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1a

    .line 1874
    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1875
    return v8

    .line 1877
    :cond_1a
    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    const/4 v9, 0x1

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1879
    const/4 v5, 0x1

    .line 1880
    .local v5, "index":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 1883
    .local v10, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1884
    .local v11, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    const/16 v12, 0x65

    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 1888
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1885
    const/4 v13, 0x3

    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1889
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    add-int/lit8 v15, v5, 0x1

    .line 1889
    .local v15, "index":I
    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    .line 1889
    .end local v5    # "index":I
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1890
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_69

    .line 1891
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1892
    return v8

    .line 1895
    :cond_69
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1903
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1904
    .local v14, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1905
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 1910
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1907
    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1911
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    .line 1912
    .local v5, "cCount":I
    new-instance v4, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/16 v16, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 1912
    .local v2, "index":I
    move-object v0, v4

    move-object v1, v6

    move v13, v2

    move-object v2, v11

    .line 1912
    .end local v2    # "index":I
    .local v13, "index":I
    move-object v12, v4

    move/from16 v4, v16

    move v8, v5

    move v5, v15

    .line 1912
    .end local v5    # "cCount":I
    .end local v15    # "index":I
    .local v8, "cCount":I
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1913
    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_640

    add-int/lit8 v0, v14, 0x1

    if-eq v0, v8, :cond_be

    goto/16 :goto_640

    .line 1918
    :cond_be
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1920
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest20x()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 1921
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1922
    return v2

    .line 1925
    :cond_d6
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1932
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v0

    .line 1933
    .end local v14    # "pCount":I
    .local v0, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1934
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1938
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1935
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1939
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 1940
    .end local v8    # "cCount":I
    .local v1, "cCount":I
    if-eq v0, v1, :cond_116

    .line 1941
    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1942
    return v4

    .line 1945
    :cond_116
    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1956
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1957
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1958
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    const-string v3, "OIMCTestMode"

    .line 1959
    invoke-virtual {v10, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 1958
    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v4, v3}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1960
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2, v9, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v2

    if-eqz v2, :cond_636

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1961
    invoke-virtual {v2, v4, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v2

    if-nez v2, :cond_14e

    .line 1962
    const/4 v2, 0x0

    goto/16 :goto_637

    .line 1967
    :cond_14e
    const-string v2, "Check TestOneshotFunc"

    const-string/jumbo v3, "start"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1968
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1969
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1970
    move v8, v1

    .line 1971
    .end local v0    # "pCount":I
    .local v8, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1972
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1976
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 1973
    const/4 v12, 0x2

    const/4 v3, 0x3

    invoke-direct {v6, v2, v12, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1977
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1978
    .end local v1    # "cCount":I
    .local v14, "cCount":I
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1979
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_62d

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_1a2

    goto/16 :goto_62d

    .line 1984
    :cond_1a2
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1986
    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v0

    if-eqz v0, :cond_623

    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1987
    invoke-virtual {v0, v1, v1, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v0

    if-nez v0, :cond_1bd

    .line 1988
    const/4 v2, 0x0

    goto/16 :goto_624

    .line 1992
    :cond_1bd
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1994
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest40x()Z

    move-result v0

    if-nez v0, :cond_1d6

    .line 1995
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1996
    return v2

    .line 1999
    :cond_1d6
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2007
    move v0, v14

    .line 2008
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2009
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    const-string v1, "OIMCTestMode2"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 2014
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc2"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2011
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2015
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 2016
    .end local v14    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_218

    .line 2017
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2018
    return v4

    .line 2021
    :cond_218
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2029
    move v0, v1

    .line 2030
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2031
    const-string v2, "OIMCTestMode"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    const-string v2, "OIMCTestMode2"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    const/16 v2, 0x65

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 2036
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v4, "TestOneshotFunc"

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2033
    const/4 v4, 0x3

    invoke-direct {v6, v3, v12, v4, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2037
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 2038
    if-eq v0, v1, :cond_258

    .line 2039
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2040
    return v4

    .line 2043
    :cond_258
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2053
    move v8, v1

    .line 2054
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2055
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 2060
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 2057
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2061
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 2062
    .end local v1    # "cCount":I
    .restart local v14    # "cCount":I
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2063
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_61a

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_2a5

    goto/16 :goto_61a

    .line 2068
    :cond_2a5
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2070
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest70x()Z

    move-result v0

    if-nez v0, :cond_2bd

    .line 2071
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2072
    return v2

    .line 2075
    :cond_2bd
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2084
    move v8, v14

    .line 2085
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2086
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2092
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 2089
    const/4 v2, 0x3

    invoke-direct {v6, v1, v9, v2, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2093
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 2094
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2095
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_611

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_311

    goto/16 :goto_611

    .line 2102
    :cond_311
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2113
    move v8, v14

    .line 2114
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2115
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    const/16 v15, 0x66

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2120
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2117
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2121
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 2122
    new-instance v5, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/4 v4, 0x1

    move-object v0, v5

    move-object v1, v6

    move-object v2, v11

    move-object v12, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2123
    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_608

    add-int/lit8 v0, v14, 0x1

    if-eq v8, v0, :cond_35f

    goto/16 :goto_608

    .line 2128
    :cond_35f
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2137
    move v0, v14

    .line 2138
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2139
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    const-string v1, "OIMCTestMode3"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2144
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2141
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2145
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 2146
    .end local v14    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_39e

    .line 2147
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2148
    return v4

    .line 2151
    :cond_39e
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2161
    move v8, v1

    .line 2162
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2163
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2168
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2165
    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2169
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2170
    .end local v1    # "cCount":I
    .local v12, "cCount":I
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2171
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_5ff

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_3e9

    goto/16 :goto_5ff

    .line 2176
    :cond_3e9
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2184
    move v8, v12

    .line 2185
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2186
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2190
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2187
    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2191
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2192
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2193
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_5f6

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_430

    goto/16 :goto_5f6

    .line 2198
    :cond_430
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2207
    move v8, v12

    .line 2208
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2209
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2214
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestRepeatFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2211
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2216
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2217
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_5ed

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v12, :cond_47d

    goto/16 :goto_5ed

    .line 2222
    :cond_47d
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest130x()Z

    move-result v0

    if-nez v0, :cond_495

    .line 2225
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2226
    return v2

    .line 2229
    :cond_495
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2239
    move v0, v12

    .line 2240
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2241
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2245
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2242
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2246
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 2247
    .end local v12    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_4d1

    .line 2248
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2249
    return v4

    .line 2252
    :cond_4d1
    const/4 v4, 0x0

    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2254
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest140x()Z

    move-result v2

    if-nez v2, :cond_4e9

    .line 2255
    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2256
    return v4

    .line 2259
    :cond_4e9
    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2267
    move v8, v1

    .line 2268
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2269
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2271
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2274
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2271
    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2275
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2276
    .end local v1    # "cCount":I
    .restart local v12    # "cCount":I
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2277
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_5e4

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_536

    goto/16 :goto_5e4

    .line 2282
    :cond_536
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2289
    move v8, v12

    .line 2290
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2291
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2292
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2295
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2292
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2297
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2298
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_5db

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_57b

    goto :goto_5db

    .line 2303
    :cond_57b
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2309
    move v8, v12

    .line 2310
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2311
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2317
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2314
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2318
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2319
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2320
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_5d2

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_5ca

    goto :goto_5d2

    .line 2327
    :cond_5ca
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2330
    return v9

    .line 2321
    :cond_5d2
    :goto_5d2
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2324
    return v2

    .line 2299
    :cond_5db
    :goto_5db
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2300
    return v2

    .line 2278
    :cond_5e4
    :goto_5e4
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2279
    return v2

    .line 2218
    :cond_5ed
    :goto_5ed
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2219
    return v2

    .line 2194
    :cond_5f6
    :goto_5f6
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2195
    return v2

    .line 2172
    :cond_5ff
    :goto_5ff
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2173
    return v2

    .line 2124
    .end local v12    # "cCount":I
    .restart local v14    # "cCount":I
    :cond_608
    :goto_608
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2125
    return v2

    .line 2096
    :cond_611
    :goto_611
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2099
    return v2

    .line 2064
    :cond_61a
    :goto_61a
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2065
    return v2

    .line 1988
    :cond_623
    move v2, v1

    :goto_624
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1989
    return v2

    .line 1980
    :cond_62d
    :goto_62d
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1981
    return v2

    .line 1962
    .end local v8    # "pCount":I
    .end local v14    # "cCount":I
    .restart local v0    # "pCount":I
    .restart local v1    # "cCount":I
    :cond_636
    move v2, v4

    :goto_637
    const-string v3, "Check TestOneshotFunc"

    const-string/jumbo v4, "start"

    invoke-direct {v6, v7, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1963
    return v2

    .line 1914
    .end local v0    # "pCount":I
    .end local v1    # "cCount":I
    .local v8, "cCount":I
    .local v14, "pCount":I
    :cond_640
    :goto_640
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1915
    return v2
.end method

.method private ruleConfigTest()Z
    .registers 33

    .line 550
    move-object/from16 v0, p0

    const-string v1, "OIMCTest"

    const-string v2, "  ================== Starting ruleConfigTest ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v1, "    ruleConfigTest"

    .line 552
    .local v1, "prefix":Ljava/lang/String;
    const/16 v2, 0x55

    .line 554
    .local v2, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 556
    .local v3, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v4, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 557
    const/16 v4, 0x50

    .line 558
    .local v4, "highLevel":I
    const/16 v12, 0x1e

    .line 559
    .local v12, "lowLevel":I
    const-string v5, "abc"

    const-string v6, "123"

    const-string v7, "+++"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 560
    .local v11, "configA":[Ljava/lang/String;
    const-string v5, "efg"

    const-string v6, "456"

    const-string v7, "---"

    const-string/jumbo v8, "rty"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    .line 561
    .local v10, "configB":[Ljava/lang/String;
    const-string/jumbo v5, "ttt"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 562
    .local v9, "configC":[Ljava/lang/String;
    const/4 v8, 0x0

    new-array v7, v8, [Ljava/lang/String;

    .line 564
    .local v7, "configD":[Ljava/lang/String;
    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v6, "OIMCTestMode"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x32

    move-object v13, v5

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    move-object v6, v5

    .line 565
    .local v6, "rule1":Lcom/oneplus/oimc/OIMCRule;
    const/16 v5, 0xd5

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    .line 568
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    .line 565
    const/4 v15, 0x3

    invoke-direct {v0, v13, v8, v15, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 569
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13, v8, v8, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v13

    if-nez v13, :cond_82

    .line 570
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v5, v13, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 571
    return v8

    .line 575
    :cond_82
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    const-string v15, "OIMCTestMode"

    .line 576
    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v15

    const-string v5, "OIMCTestMode"

    invoke-virtual {v15, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 575
    invoke-direct {v0, v13, v8, v8, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 577
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v14, v8, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_728

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 578
    move/from16 v25, v2

    move-object v15, v7

    move v13, v8

    move-object/from16 v18, v10

    move-object v2, v11

    move-object v7, v6

    move-object v11, v9

    goto/16 :goto_731

    .line 583
    :cond_b1
    const-string v5, "MODE_ENTER"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v5, v13, v14}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 587
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    const-string v15, "OIMCTestMode"

    .line 588
    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v15

    const-string v5, "OIMCTestMode"

    invoke-virtual {v15, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 587
    invoke-direct {v0, v13, v8, v8, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 589
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v8, v14, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_713

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f0

    .line 590
    move/from16 v25, v2

    move-object v15, v7

    move v13, v8

    move-object/from16 v18, v10

    move-object v2, v11

    move-object v7, v6

    move-object v11, v9

    goto/16 :goto_71c

    .line 595
    :cond_f0
    const-string v5, "MODE_EXIT"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v5, v13, v14}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 598
    invoke-static {v14}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v13, "OIMCTestMode"

    .line 599
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v15, "OIMCTestMode"

    invoke-virtual {v13, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    .line 598
    invoke-direct {v0, v5, v8, v8, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 602
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 603
    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    const-string v13, "OIMCTestMode"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x32

    move-object v13, v5

    move-object/from16 v20, v9

    move v9, v14

    move-object v14, v15

    .end local v9    # "configC":[Ljava/lang/String;
    .local v20, "configC":[Ljava/lang/String;
    move-object/from16 v21, v7

    const/4 v7, 0x3

    move/from16 v15, v16

    .line 603
    .end local v7    # "configD":[Ljava/lang/String;
    .local v21, "configD":[Ljava/lang/String;
    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v10

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    .line 604
    .local v13, "rule2":Lcom/oneplus/oimc/OIMCRule;
    const/16 v5, 0xd5

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v14

    .line 607
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 604
    invoke-direct {v0, v14, v8, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 608
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v8, v9, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_6fa

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_170

    .line 609
    move/from16 v25, v2

    move-object v7, v6

    move-object/from16 v18, v10

    move-object v2, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move v13, v8

    goto/16 :goto_707

    .line 614
    :cond_170
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v14, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v5, v14, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 617
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 618
    const/16 v14, 0xd6

    invoke-static {v14}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 621
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    .line 618
    invoke-direct {v0, v5, v8, v7, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 622
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v9, v8, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_6e1

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b4

    .line 623
    move/from16 v25, v2

    move-object v7, v6

    move-object/from16 v18, v10

    move-object v2, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move v13, v8

    goto/16 :goto_6ee

    .line 628
    :cond_1b4
    const-string v5, "RULE_REMOVE_FOR_ALL"

    iget-object v14, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v5, v14, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 631
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v14

    const-string v15, "OIMCTestMode"

    .line 632
    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v15

    const-string v5, "OIMCTestMode"

    invoke-virtual {v15, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 631
    invoke-direct {v0, v14, v8, v8, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 635
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 636
    new-instance v14, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v5, v14

    move-object/from16 v22, v6

    move-object v6, v15

    .end local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v22, "rule1":Lcom/oneplus/oimc/OIMCRule;
    move-object/from16 v15, v21

    move/from16 v7, v16

    .line 636
    .end local v21    # "configD":[Ljava/lang/String;
    .local v15, "configD":[Ljava/lang/String;
    move-object/from16 v8, v17

    move-object/from16 v23, v20

    move/from16 v9, v18

    .line 636
    .end local v20    # "configC":[Ljava/lang/String;
    .local v23, "configC":[Ljava/lang/String;
    move-object/from16 v24, v10

    move v10, v12

    .line 636
    .end local v10    # "configB":[Ljava/lang/String;
    .local v24, "configB":[Ljava/lang/String;
    move/from16 v25, v2

    move-object v2, v11

    move-object/from16 v11, v23

    .line 636
    .end local v11    # "configA":[Ljava/lang/String;
    .local v2, "configA":[Ljava/lang/String;
    .local v25, "rinfo":I
    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    .line 637
    .local v14, "rule3":Lcom/oneplus/oimc/OIMCRule;
    const/16 v11, 0xd5

    invoke-static {v11}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 640
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 637
    const/4 v9, 0x3

    invoke-direct {v0, v5, v10, v9, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 641
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v10, v10, v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_22e

    .line 642
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v10}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 643
    return v10

    .line 647
    :cond_22e
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v6, "OIMCTestMode"

    .line 648
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 647
    invoke-direct {v0, v5, v10, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 649
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v8, v10, v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_6cc

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    move-object/from16 v7, v23

    invoke-virtual {v5, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    .end local v23    # "configC":[Ljava/lang/String;
    .local v7, "configC":[Ljava/lang/String;
    if-nez v5, :cond_25e

    .line 650
    move-object v11, v7

    move-object/from16 v27, v13

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move v13, v10

    goto/16 :goto_6d5

    .line 655
    :cond_25e
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 656
    const/16 v5, 0xd6

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 659
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 656
    invoke-direct {v0, v6, v10, v9, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 660
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v10, v10, v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_6b8

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_293

    .line 661
    move-object v11, v7

    move-object/from16 v27, v13

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move v13, v10

    goto/16 :goto_6c0

    .line 666
    :cond_293
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 667
    new-instance v16, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v5, v16

    move-object/from16 v26, v7

    move/from16 v7, v17

    .end local v7    # "configC":[Ljava/lang/String;
    .local v26, "configC":[Ljava/lang/String;
    move-object/from16 v8, v18

    move/from16 v9, v19

    move v10, v4

    move-object/from16 v27, v13

    move v13, v11

    move-object/from16 v11, v26

    .line 667
    .end local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v27, "rule2":Lcom/oneplus/oimc/OIMCRule;
    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    move-object/from16 v14, v16

    .line 668
    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 671
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 668
    const/4 v10, 0x3

    invoke-direct {v0, v5, v11, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 672
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v11, v11, v11}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_6a5

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2ee

    .line 673
    move v13, v11

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v26

    goto/16 :goto_6ac

    .line 678
    :cond_2ee
    const/16 v5, 0xd6

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 681
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 678
    invoke-direct {v0, v6, v11, v10, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 684
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 685
    new-instance v16, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    move-object/from16 v5, v16

    move/from16 v9, v17

    move v13, v10

    move v10, v12

    move v13, v11

    move-object/from16 v11, v26

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    move-object/from16 v14, v16

    .line 686
    const/16 v5, 0xd9

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 689
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 686
    const/4 v7, 0x3

    invoke-direct {v0, v5, v13, v7, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 690
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    const/4 v11, 0x1

    invoke-virtual {v5, v11, v13, v13}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_693

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    move-object/from16 v10, v26

    invoke-virtual {v5, v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    .end local v26    # "configC":[Ljava/lang/String;
    .local v10, "configC":[Ljava/lang/String;
    if-nez v5, :cond_357

    .line 691
    move-object v11, v10

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    goto/16 :goto_699

    .line 696
    :cond_357
    new-instance v16, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, "OIMCTestMode2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, v16

    move-object/from16 v28, v10

    move v10, v4

    .end local v10    # "configC":[Ljava/lang/String;
    .local v28, "configC":[Ljava/lang/String;
    move-object/from16 v11, v24

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    move-object/from16 v11, v16

    .line 697
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "rule2":Lcom/oneplus/oimc/OIMCRule;
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 698
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 699
    const/16 v5, 0xd5

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 702
    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 699
    const/4 v7, 0x3

    invoke-direct {v0, v6, v13, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 703
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v13, v13, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_680

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3ad

    .line 704
    move-object v9, v11

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v28

    goto/16 :goto_687

    .line 709
    :cond_3ad
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 710
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v6, "OIMCTestMode2"

    .line 711
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 710
    invoke-direct {v0, v5, v13, v13, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 712
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v13, v13, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_66d

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    move-object/from16 v8, v24

    invoke-virtual {v5, v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    .end local v24    # "configB":[Ljava/lang/String;
    .local v8, "configB":[Ljava/lang/String;
    if-nez v5, :cond_3e1

    .line 713
    move-object/from16 v18, v8

    move-object v9, v11

    move-object/from16 v7, v22

    move-object/from16 v11, v28

    goto/16 :goto_674

    .line 718
    :cond_3e1
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 719
    new-instance v16, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v5, v16

    move-object/from16 v29, v8

    move-object/from16 v8, v17

    .end local v8    # "configB":[Ljava/lang/String;
    .local v29, "configB":[Ljava/lang/String;
    move/from16 v9, v18

    move v10, v12

    move-object/from16 v30, v11

    move-object v11, v15

    .line 719
    .end local v11    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v30, "rule2":Lcom/oneplus/oimc/OIMCRule;
    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    move-object/from16 v11, v16

    .line 720
    .local v11, "rule4":Lcom/oneplus/oimc/OIMCRule;
    const/16 v5, 0xd5

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 723
    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 720
    const/4 v7, 0x3

    invoke-direct {v0, v6, v13, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 724
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v10, 0x1

    invoke-virtual {v5, v13, v10, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_657

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v15}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_43b

    .line 725
    move-object/from16 v17, v11

    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v18, v29

    move-object/from16 v9, v30

    goto/16 :goto_661

    .line 730
    :cond_43b
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 731
    const/16 v5, 0xd6

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 734
    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 731
    const/4 v7, 0x3

    invoke-direct {v0, v6, v13, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 735
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v10, v13, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-eqz v5, :cond_641

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    move-object/from16 v9, v29

    invoke-virtual {v5, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v5

    .end local v29    # "configB":[Ljava/lang/String;
    .local v9, "configB":[Ljava/lang/String;
    if-nez v5, :cond_474

    .line 736
    move-object/from16 v18, v9

    move-object/from16 v17, v11

    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    goto/16 :goto_64b

    .line 741
    :cond_474
    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 742
    new-instance v16, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, "OIMCTestMode3"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    move-object/from16 v5, v16

    move-object/from16 v18, v9

    move/from16 v9, v17

    .end local v9    # "configB":[Ljava/lang/String;
    .local v18, "configB":[Ljava/lang/String;
    move v10, v12

    move-object/from16 v17, v11

    move-object/from16 v11, v28

    .line 742
    .end local v11    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .local v17, "rule4":Lcom/oneplus/oimc/OIMCRule;
    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    .line 743
    .end local v14    # "rule3":Lcom/oneplus/oimc/OIMCRule;
    .local v5, "rule3":Lcom/oneplus/oimc/OIMCRule;
    const/16 v6, 0xd5

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    .line 746
    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 743
    const/4 v8, 0x3

    invoke-direct {v0, v6, v13, v8, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 747
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v13, v13, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v6

    if-eqz v6, :cond_62f

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c7

    .line 748
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    goto/16 :goto_635

    .line 753
    :cond_4c7
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 754
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "OIMCTestMode3"

    .line 755
    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v9, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    .line 754
    invoke-direct {v0, v8, v13, v13, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 756
    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v13, v13, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_61d

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4f8

    .line 757
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    goto/16 :goto_623

    .line 762
    :cond_4f8
    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 763
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode2"

    .line 764
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "OIMCTestMode2"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 763
    invoke-direct {v0, v9, v13, v13, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 765
    iget-object v9, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v9, v13, v13, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v9

    if-eqz v9, :cond_60b

    iget-object v9, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v9, v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_529

    .line 766
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    goto/16 :goto_611

    .line 771
    :cond_529
    iget-object v9, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 772
    const/16 v9, 0xd6

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 775
    move-object/from16 v9, v30

    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 775
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v9, "rule2":Lcom/oneplus/oimc/OIMCRule;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 772
    const/4 v14, 0x3

    invoke-direct {v0, v10, v13, v14, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 776
    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v13, v13, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_5fb

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_55c

    .line 777
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    goto/16 :goto_5ff

    .line 782
    :cond_55c
    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 783
    const/16 v7, 0xd6

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 786
    move-object/from16 v7, v22

    invoke-virtual {v3, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 786
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v7, "rule1":Lcom/oneplus/oimc/OIMCRule;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 783
    const/4 v14, 0x3

    invoke-direct {v0, v10, v13, v14, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 787
    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v13, v13, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_5ed

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    move-object/from16 v11, v28

    invoke-virtual {v10, v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v10

    .end local v28    # "configC":[Ljava/lang/String;
    .local v11, "configC":[Ljava/lang/String;
    if-nez v10, :cond_58c

    goto :goto_5ef

    .line 793
    :cond_58c
    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 794
    const/16 v10, 0xd6

    invoke-static {v10}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 797
    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 794
    const/4 v14, 0x3

    invoke-direct {v0, v10, v13, v14, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 798
    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v13, v6, v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_5e1

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkDifferenceSwitch([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5b8

    goto :goto_5e1

    .line 803
    :cond_5b8
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    const-string v14, "OIMCTestMode"

    .line 804
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    const-string v6, "OIMCTestMode"

    invoke-virtual {v14, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 803
    invoke-direct {v0, v10, v13, v13, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 805
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    const-string v8, "OIMCTestMode3"

    .line 806
    invoke-virtual {v3, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 805
    invoke-direct {v0, v6, v13, v13, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 808
    const/4 v6, 0x1

    return v6

    .line 799
    :cond_5e1
    :goto_5e1
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 800
    return v13

    .line 788
    .end local v11    # "configC":[Ljava/lang/String;
    .restart local v28    # "configC":[Ljava/lang/String;
    :cond_5ed
    move-object/from16 v11, v28

    .line 788
    .end local v28    # "configC":[Ljava/lang/String;
    .restart local v11    # "configC":[Ljava/lang/String;
    :goto_5ef
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    return v13

    .line 777
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    :cond_5fb
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    .line 777
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    :goto_5ff
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 778
    return v13

    .line 766
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    .restart local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_60b
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    .line 766
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    :goto_611
    const-string v6, "MODE_EXIT"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 767
    return v13

    .line 757
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    .restart local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_61d
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    .line 757
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    :goto_623
    const-string v6, "MODE_ENTER"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 758
    return v13

    .line 748
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    .restart local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_62f
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v30

    .line 748
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    :goto_635
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 749
    return v13

    .line 736
    .end local v5    # "rule3":Lcom/oneplus/oimc/OIMCRule;
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v17    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .end local v18    # "configB":[Ljava/lang/String;
    .local v11, "rule4":Lcom/oneplus/oimc/OIMCRule;
    .restart local v14    # "rule3":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    .restart local v29    # "configB":[Ljava/lang/String;
    .restart local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_641
    move-object/from16 v17, v11

    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v18, v29

    move-object/from16 v9, v30

    .line 736
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .end local v29    # "configB":[Ljava/lang/String;
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v17    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_64b
    const-string v5, "RULE_REMOVE_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 737
    return v13

    .line 725
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v17    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .end local v18    # "configB":[Ljava/lang/String;
    .local v11, "rule4":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v28    # "configC":[Ljava/lang/String;
    .restart local v29    # "configB":[Ljava/lang/String;
    .restart local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_657
    move-object/from16 v17, v11

    move-object/from16 v7, v22

    move-object/from16 v11, v28

    move-object/from16 v18, v29

    move-object/from16 v9, v30

    .line 725
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v28    # "configC":[Ljava/lang/String;
    .end local v29    # "configB":[Ljava/lang/String;
    .end local v30    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v17    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_661
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 726
    return v13

    .line 713
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v17    # "rule4":Lcom/oneplus/oimc/OIMCRule;
    .end local v18    # "configB":[Ljava/lang/String;
    .local v11, "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v24    # "configB":[Ljava/lang/String;
    .restart local v28    # "configC":[Ljava/lang/String;
    :cond_66d
    move-object v9, v11

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v28

    .line 713
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v24    # "configB":[Ljava/lang/String;
    .end local v28    # "configC":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_674
    const-string v5, "MODE_ENTER"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    return v13

    .line 704
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v18    # "configB":[Ljava/lang/String;
    .local v11, "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v24    # "configB":[Ljava/lang/String;
    .restart local v28    # "configC":[Ljava/lang/String;
    :cond_680
    move-object v9, v11

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v28

    .line 704
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v24    # "configB":[Ljava/lang/String;
    .end local v28    # "configC":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_687
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 705
    return v13

    .line 691
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v24    # "configB":[Ljava/lang/String;
    .restart local v26    # "configC":[Ljava/lang/String;
    .restart local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_693
    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v26

    .line 691
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v24    # "configB":[Ljava/lang/String;
    .end local v26    # "configC":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_699
    const-string v5, "RUN_RULE_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 692
    return v13

    .line 673
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v24    # "configB":[Ljava/lang/String;
    .restart local v26    # "configC":[Ljava/lang/String;
    :cond_6a5
    move v13, v11

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move-object/from16 v11, v26

    .line 673
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v24    # "configB":[Ljava/lang/String;
    .end local v26    # "configC":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    :goto_6ac
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
    return v13

    .line 661
    .end local v11    # "configC":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v7, "configC":[Ljava/lang/String;
    .restart local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v24    # "configB":[Ljava/lang/String;
    :cond_6b8
    move-object v11, v7

    move-object/from16 v27, v13

    move-object/from16 v7, v22

    move-object/from16 v18, v24

    move v13, v10

    .line 661
    .end local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v24    # "configB":[Ljava/lang/String;
    .local v7, "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :goto_6c0
    const-string v5, "RULE_REMOVE_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 662
    return v13

    .line 650
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "configC":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v23    # "configC":[Ljava/lang/String;
    .restart local v24    # "configB":[Ljava/lang/String;
    :cond_6cc
    move-object/from16 v27, v13

    move-object/from16 v7, v22

    move-object/from16 v11, v23

    move-object/from16 v18, v24

    move v13, v10

    .line 650
    .end local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v22    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v23    # "configC":[Ljava/lang/String;
    .end local v24    # "configB":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v11    # "configC":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :goto_6d5
    const-string v5, "MODE_ENTER"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 651
    return v13

    .line 623
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v14    # "rule3":Lcom/oneplus/oimc/OIMCRule;
    .end local v15    # "configD":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v25    # "rinfo":I
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v2, "rinfo":I
    .restart local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v10, "configB":[Ljava/lang/String;
    .local v11, "configA":[Ljava/lang/String;
    .restart local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v20    # "configC":[Ljava/lang/String;
    .restart local v21    # "configD":[Ljava/lang/String;
    :cond_6e1
    move/from16 v25, v2

    move-object v7, v6

    move-object/from16 v18, v10

    move-object v2, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move v13, v8

    .line 623
    .end local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v10    # "configB":[Ljava/lang/String;
    .end local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v20    # "configC":[Ljava/lang/String;
    .end local v21    # "configD":[Ljava/lang/String;
    .local v2, "configA":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v15    # "configD":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v25    # "rinfo":I
    .restart local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :goto_6ee
    const-string v5, "RULE_REMOVE_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 624
    return v13

    .line 609
    .end local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v15    # "configD":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v25    # "rinfo":I
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v2, "rinfo":I
    .restart local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .restart local v10    # "configB":[Ljava/lang/String;
    .local v11, "configA":[Ljava/lang/String;
    .restart local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v20    # "configC":[Ljava/lang/String;
    .restart local v21    # "configD":[Ljava/lang/String;
    :cond_6fa
    move/from16 v25, v2

    move-object v7, v6

    move-object/from16 v18, v10

    move-object v2, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move v13, v8

    .line 609
    .end local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v10    # "configB":[Ljava/lang/String;
    .end local v13    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v20    # "configC":[Ljava/lang/String;
    .end local v21    # "configD":[Ljava/lang/String;
    .local v2, "configA":[Ljava/lang/String;
    .restart local v7    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v15    # "configD":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v25    # "rinfo":I
    .restart local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :goto_707
    const-string v5, "RULE_ADD_FOR_ALL"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    return v13

    .line 590
    .end local v15    # "configD":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v25    # "rinfo":I
    .end local v27    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v2, "rinfo":I
    .restart local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v7, "configD":[Ljava/lang/String;
    .local v9, "configC":[Ljava/lang/String;
    .restart local v10    # "configB":[Ljava/lang/String;
    .local v11, "configA":[Ljava/lang/String;
    :cond_713
    move/from16 v25, v2

    move-object v15, v7

    move v13, v8

    move-object/from16 v18, v10

    move-object v2, v11

    move-object v7, v6

    move-object v11, v9

    .line 590
    .end local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "configC":[Ljava/lang/String;
    .end local v10    # "configB":[Ljava/lang/String;
    .local v2, "configA":[Ljava/lang/String;
    .local v7, "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v15    # "configD":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v25    # "rinfo":I
    :goto_71c
    const-string v5, "MODE_EXIT"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    return v13

    .line 578
    .end local v15    # "configD":[Ljava/lang/String;
    .end local v18    # "configB":[Ljava/lang/String;
    .end local v25    # "rinfo":I
    .local v2, "rinfo":I
    .restart local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v7, "configD":[Ljava/lang/String;
    .restart local v9    # "configC":[Ljava/lang/String;
    .restart local v10    # "configB":[Ljava/lang/String;
    .local v11, "configA":[Ljava/lang/String;
    :cond_728
    move/from16 v25, v2

    move-object v15, v7

    move v13, v8

    move-object/from16 v18, v10

    move-object v2, v11

    move-object v7, v6

    move-object v11, v9

    .line 578
    .end local v6    # "rule1":Lcom/oneplus/oimc/OIMCRule;
    .end local v9    # "configC":[Ljava/lang/String;
    .end local v10    # "configB":[Ljava/lang/String;
    .local v2, "configA":[Ljava/lang/String;
    .local v7, "rule1":Lcom/oneplus/oimc/OIMCRule;
    .local v11, "configC":[Ljava/lang/String;
    .restart local v15    # "configD":[Ljava/lang/String;
    .restart local v18    # "configB":[Ljava/lang/String;
    .restart local v25    # "rinfo":I
    :goto_731
    const-string v5, "MODE_ENTER"

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6, v13}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 579
    return v13
.end method

.method private ruleSubTest130x()Z
    .registers 11

    .line 1445
    const-string v0, "      ruleSubTest130x"

    .line 1446
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest130x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1450
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1455
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1456
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 1457
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1456
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1458
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_194

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1459
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_44

    goto/16 :goto_194

    .line 1464
    :cond_44
    const-string v4, "131.1/131.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1468
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1469
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1470
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode2"

    .line 1471
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1470
    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1472
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_18c

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1473
    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_7a

    goto/16 :goto_18c

    .line 1478
    :cond_7a
    const-string v4, "132.1/132.2 MODE_ENTER check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1482
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1483
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1484
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode"

    .line 1485
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1484
    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1486
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_184

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1487
    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_b0

    goto/16 :goto_184

    .line 1492
    :cond_b0
    const-string v4, "132.1/132.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1497
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1498
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1499
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode2"

    .line 1500
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode2"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1499
    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1501
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode"

    .line 1502
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1501
    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1503
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-eqz v7, :cond_17c

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1504
    invoke-virtual {v7, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_fa

    goto/16 :goto_17c

    .line 1509
    :cond_fa
    const-string v7, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v8, "func start"

    invoke-direct {p0, v0, v7, v8, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1513
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1514
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1515
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v7, "OIMCTestMode"

    .line 1516
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1515
    invoke-direct {p0, v3, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1517
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_174

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1518
    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_12f

    goto :goto_174

    .line 1523
    :cond_12f
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1527
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1528
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1529
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1530
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v7, "OIMCTestMode"

    invoke-virtual {v4, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1529
    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1531
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_16c

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1532
    invoke-virtual {v3, v6, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_164

    goto :goto_16c

    .line 1537
    :cond_164
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1539
    return v5

    .line 1533
    :cond_16c
    :goto_16c
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1534
    return v6

    .line 1519
    :cond_174
    :goto_174
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1520
    return v6

    .line 1505
    :cond_17c
    :goto_17c
    const-string v3, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1506
    return v6

    .line 1488
    :cond_184
    :goto_184
    const-string v3, "133.1/133.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1489
    return v6

    .line 1474
    :cond_18c
    :goto_18c
    const-string v3, "132.1/132.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1475
    return v6

    .line 1460
    :cond_194
    :goto_194
    const-string v3, "131.1/131.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1461
    return v6
.end method

.method private ruleSubTest140x()Z
    .registers 10

    .line 1561
    const-string v0, "      ruleSubTest140x"

    .line 1562
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest140x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1568
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    const/16 v3, 0x65

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1573
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "TestOneshotFunc"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v6, 0x583

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1570
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1575
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1576
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1580
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x584

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1577
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1582
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1583
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1587
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestRepeatFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/16 v5, 0x585

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1584
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1591
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1592
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1593
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1594
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1595
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1594
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1596
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_219

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1597
    invoke-virtual {v3, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_219

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1598
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_b8

    goto/16 :goto_219

    .line 1603
    :cond_b8
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1607
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1608
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1609
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1610
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1611
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1610
    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1612
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_211

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1613
    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_211

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1614
    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_102

    goto/16 :goto_211

    .line 1619
    :cond_102
    const-string v4, "142.1/142.2 MODE_SWITCH"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1623
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1624
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1625
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1626
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1627
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1626
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1628
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_209

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1629
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_209

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1630
    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_14b

    goto/16 :goto_209

    .line 1635
    :cond_14b
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1639
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1640
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1641
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1642
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1643
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1642
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1644
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_201

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1645
    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_201

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1646
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_18e

    goto :goto_201

    .line 1651
    :cond_18e
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1656
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1657
    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    const/16 v3, 0x66

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1661
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x5ab

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1658
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1663
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1664
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1668
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x5ac

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1665
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1670
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1671
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1675
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestRepeatFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/16 v5, 0x5ad

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1672
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1677
    return v6

    .line 1647
    :cond_201
    :goto_201
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1648
    return v7

    .line 1631
    :cond_209
    :goto_209
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1632
    return v7

    .line 1615
    :cond_211
    :goto_211
    const-string v3, "142.1/142.2 MODE_SWITCH"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1616
    return v7

    .line 1599
    :cond_219
    :goto_219
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1600
    return v7
.end method

.method private ruleSubTest20x()Z
    .registers 9

    .line 959
    const-string v0, "      ruleSubTest20x"

    .line 960
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest20x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 963
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 964
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 966
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 967
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 966
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 968
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_1f7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 969
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_1f7

    .line 974
    :cond_3e
    const-string v3, "20.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 976
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 977
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 979
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 980
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 979
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 981
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_1ef

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 982
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_1ef

    .line 987
    :cond_74
    const-string v3, "20.4 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 989
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 990
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 992
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode2"

    .line 993
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode2"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 992
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 994
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_1e7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 995
    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_aa

    goto/16 :goto_1e7

    .line 1000
    :cond_aa
    const-string v3, "20.5 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1002
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1003
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1005
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 1006
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 1005
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1007
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_1df

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1008
    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_e1

    goto/16 :goto_1df

    .line 1013
    :cond_e1
    const-string v4, "20.6 MODE_EXIT check"

    const-string v6, "funcs stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1016
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1017
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1018
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 1019
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 1018
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1020
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_1d7

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1021
    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_117

    goto/16 :goto_1d7

    .line 1026
    :cond_117
    const-string v4, "20.7 MODE_ENTER check"

    const-string v6, "funcs start"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1029
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1030
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1031
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode2"

    .line 1032
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 1031
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1033
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_1cf

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1034
    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_14d

    goto/16 :goto_1cf

    .line 1039
    :cond_14d
    const-string v4, "20.8 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1042
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1043
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1044
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 1045
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 1044
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1046
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_1c7

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1047
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_182

    goto :goto_1c7

    .line 1052
    :cond_182
    const-string v4, "20.9 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1056
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1057
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1058
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1057
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1059
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1060
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_1b7

    goto :goto_1bf

    .line 1065
    :cond_1b7
    const-string v3, "20.10 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1066
    return v2

    .line 1061
    :cond_1bf
    :goto_1bf
    const-string v2, "20.10 MODE_EXIT check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1062
    return v5

    .line 1048
    :cond_1c7
    :goto_1c7
    const-string v2, "20.9 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1049
    return v5

    .line 1035
    :cond_1cf
    :goto_1cf
    const-string v2, "20.8 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1036
    return v5

    .line 1022
    :cond_1d7
    :goto_1d7
    const-string v2, "20.7 MODE_ENTER check"

    const-string v3, "funcs start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1023
    return v5

    .line 1009
    :cond_1df
    :goto_1df
    const-string v2, "20.6 MODE_EXIT check"

    const-string v3, "funcs stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1010
    return v5

    .line 996
    :cond_1e7
    :goto_1e7
    const-string v2, "20.5 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 997
    return v5

    .line 983
    :cond_1ef
    :goto_1ef
    const-string v2, "20.4 MODE_ENTER check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 984
    return v5

    .line 970
    :cond_1f7
    :goto_1f7
    const-string v2, "20.3 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 971
    return v5
.end method

.method private ruleSubTest40x()Z
    .registers 14

    .line 1093
    const-string v0, "      ruleSubTest40x"

    .line 1094
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest40x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1097
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1102
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1103
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 1106
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1103
    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1107
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_2f9

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1108
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_2f9

    .line 1113
    :cond_45
    const-string v4, "41.1/41.2 MODE_CONFIG check"

    const-string v8, "func no act"

    const/4 v9, 0x1

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1117
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1118
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1119
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v8, "OIMCTestMode3"

    .line 1120
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1119
    invoke-direct {p0, v4, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1121
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_2f1

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1122
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_7c

    goto/16 :goto_2f1

    .line 1127
    :cond_7c
    const-string v4, "42.1/42.2 MODE_ENTER check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1131
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1132
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1133
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1134
    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    .line 1138
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "TestOneshotFunc"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const/16 v11, 0x1a7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 1135
    invoke-direct {p0, v8, v9, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1139
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_2e9

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1140
    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_c4

    goto/16 :goto_2e9

    .line 1145
    :cond_c4
    const-string v8, "42.3/42.4 RULE_ADD check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1149
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1150
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1151
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1152
    const-string v8, "OIMCTestMode3"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const/16 v8, 0x66

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1156
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1af

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 1153
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1157
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_2e1

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1158
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_10c

    goto/16 :goto_2e1

    .line 1163
    :cond_10c
    const-string v10, "43.1/43.2 RULE_REMOVE check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1167
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1168
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1169
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1170
    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1175
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1b1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 1172
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1176
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_2d9

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1177
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_157

    goto/16 :goto_2d9

    .line 1182
    :cond_157
    const-string v10, "43.3/43.4 RULE_ADD check"

    const-string v11, "func start"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1186
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1187
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1188
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1194
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 1191
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1195
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_2d1

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1196
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_1a2

    goto/16 :goto_2d1

    .line 1201
    :cond_1a2
    const-string v10, "43.5/43.6 RULE_ADD check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1205
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1206
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1207
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1208
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    .line 1212
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "TestOneshotFunc"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const/16 v11, 0x1b9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 1209
    invoke-direct {p0, v8, v6, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1213
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_2c9

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1214
    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_1e8

    goto/16 :goto_2c9

    .line 1219
    :cond_1e8
    const-string v8, "44.1/44.2 RULE_REMOVE check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1223
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1224
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1225
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    .line 1228
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1225
    invoke-direct {p0, v3, v9, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1229
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_2c1

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1230
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_21e

    goto/16 :goto_2c1

    .line 1235
    :cond_21e
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1239
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1240
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1241
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode3"

    .line 1242
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1241
    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1243
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_2b9

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1244
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_253

    goto :goto_2b9

    .line 1249
    :cond_253
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1253
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1254
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1255
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    .line 1256
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1255
    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1257
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_2b1

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1258
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_288

    goto :goto_2b1

    .line 1263
    :cond_288
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v5, "func stop"

    invoke-direct {p0, v0, v3, v5, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1266
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1267
    const-string v3, "OIMCTestMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1271
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestOneshotFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1268
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1272
    return v9

    .line 1259
    :cond_2b1
    :goto_2b1
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1260
    return v5

    .line 1245
    :cond_2b9
    :goto_2b9
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1246
    return v5

    .line 1231
    :cond_2c1
    :goto_2c1
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1232
    return v5

    .line 1215
    :cond_2c9
    :goto_2c9
    const-string v3, "44.1/44.2 RULE_REMOVE check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1216
    return v5

    .line 1197
    :cond_2d1
    :goto_2d1
    const-string v3, "43.5/43.6 RULE_ADD check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    return v5

    .line 1178
    :cond_2d9
    :goto_2d9
    const-string v3, "43.3/43.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    return v5

    .line 1159
    :cond_2e1
    :goto_2e1
    const-string v3, "43.1/43.2 RULE_REMOVE check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1160
    return v5

    .line 1141
    :cond_2e9
    :goto_2e9
    const-string v3, "42.3/42.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1142
    return v5

    .line 1123
    :cond_2f1
    :goto_2f1
    const-string v3, "42.1/42.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1124
    return v5

    .line 1109
    :cond_2f9
    :goto_2f9
    const-string v3, "41.1/41.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1110
    return v5
.end method

.method private ruleSubTest70x()Z
    .registers 10

    .line 1299
    const-string v0, "      ruleSubTest70x"

    .line 1300
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest70x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1303
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1308
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 1309
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1308
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1310
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1311
    const-string v3, "71.1/71.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1312
    return v6

    .line 1315
    :cond_3c
    const-string v4, "71.1/71.2 MODE_ENTER check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1319
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1320
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1321
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1320
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1322
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1323
    const-string v3, "71.3/71.4 MODE_ENTER check"

    const-string v4, "func no start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1324
    return v6

    .line 1327
    :cond_6b
    const-string v4, "71.3/71.4 MODE_ENTER check"

    const-string v5, "func no start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1332
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1333
    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1337
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "TestRepeatFunc"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v7, 0x2d1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1334
    invoke-direct {p0, v4, v3, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1338
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1339
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode3"

    .line 1340
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1339
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1341
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_bf

    .line 1342
    const-string v3, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1343
    return v6

    .line 1346
    :cond_bf
    const-string v4, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1350
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1351
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1352
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1351
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1353
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_ef

    .line 1354
    const-string v3, "72.4/72.5 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1355
    return v6

    .line 1358
    :cond_ef
    const-string v5, "72.4/72.5 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1362
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1363
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1364
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1363
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1365
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_11e

    .line 1366
    const-string v3, "73.1/73.2 MODE_EXIT check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1367
    return v6

    .line 1370
    :cond_11e
    const-string v5, "73.1/73.2 MODE_EXIT check"

    const-string v7, "func start"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1374
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1375
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1376
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1375
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1377
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_14d

    .line 1378
    const-string v3, "74.1/74.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1379
    return v6

    .line 1382
    :cond_14d
    const-string v5, "74.1/74.2 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1387
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1388
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode"

    .line 1389
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1388
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1390
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1391
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1390
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1392
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_18f

    .line 1393
    const-string v3, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1394
    return v6

    .line 1397
    :cond_18f
    const-string v4, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1401
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1402
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v4

    .line 1403
    .local v4, "pCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1404
    const-string v5, "OIMCTestMode3"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    const/16 v5, 0x66

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 1408
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "TestRepeatFunc"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const/16 v8, 0x2db

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1405
    invoke-direct {p0, v5, v3, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1409
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    .line 1410
    .local v5, "cCount":I
    add-int/lit8 v7, v5, 0x1

    if-eq v4, v7, :cond_1d5

    .line 1411
    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v7, "rule removed"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1412
    return v6

    .line 1415
    :cond_1d5
    const-string v7, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v8, "rule removed"

    invoke-direct {p0, v0, v7, v8, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1417
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_1ed

    .line 1418
    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1419
    return v6

    .line 1422
    :cond_1ed
    const-string v6, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v6, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1424
    return v3
.end method

.method private runRuleTest()Z
    .registers 14

    .line 812
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting runRuleTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v0, "    runRuleTest"

    .line 814
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 816
    .local v1, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 818
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 819
    new-instance v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 820
    .local v3, "rule":Lcom/oneplus/oimc/OIMCRule;
    const/16 v4, 0xd9

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 823
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 820
    const/4 v9, 0x3

    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 824
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_51

    .line 825
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 826
    return v7

    .line 829
    :cond_51
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode"

    .line 830
    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 829
    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 831
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_78

    .line 832
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 833
    return v7

    .line 837
    :cond_78
    const-string v5, "RUN_RULE_FOR_ALL"

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 839
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 840
    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v6, v10, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v5

    .line 841
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 844
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 841
    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 845
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 846
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 847
    return v7

    .line 850
    :cond_c1
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 851
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode2"

    .line 852
    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode2"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 851
    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 853
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 854
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 855
    return v7

    .line 858
    :cond_ed
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 859
    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v6, v10, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v5

    .line 860
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 863
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 860
    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 864
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_12d

    .line 865
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 866
    return v7

    .line 869
    :cond_12d
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 870
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v10, "OIMCTestMode"

    .line 871
    invoke-virtual {v2, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 870
    invoke-direct {p0, v8, v7, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 872
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_15a

    .line 873
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 874
    return v7

    .line 877
    :cond_15a
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 878
    new-instance v8, Lcom/oneplus/oimc/OIMCRule;

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    const-string v12, "OIMCTestMode2"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v6, v11, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v8

    .line 879
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 882
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 879
    invoke-direct {p0, v4, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 883
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_19a

    .line 884
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 885
    return v7

    .line 888
    :cond_19a
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 889
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 888
    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 890
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 891
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 892
    return v7

    .line 896
    :cond_1c1
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 898
    return v6
.end method

.method private sendMessageSynced(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 2465
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 2466
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/OIMCService;->flushMessage(Z)Z

    .line 2467
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, "OIMCTest"

    return-object v0
.end method

.method public startTest()V
    .registers 4

    .line 2484
    monitor-enter p0

    .line 2485
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    if-eqz v0, :cond_e

    .line 2486
    const-string v0, "OIMCTest"

    const-string v1, "Can\'t start the OIMC selt test, it is in running status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    monitor-exit p0

    return-void

    .line 2489
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    .line 2490
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2c

    .line 2552
    const-string v0, "OIMCTest"

    const-string v1, "================== Starting The OIMC Self Test ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->enterTestMode()V

    .line 2555
    new-instance v0, Lcom/oneplus/server/OIMCTest$1TestThread;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCTest$1TestThread;-><init>(Lcom/oneplus/server/OIMCTest;)V

    .line 2556
    .local v0, "tt":Lcom/oneplus/server/OIMCTest$1TestThread;
    const-string v1, "OIMCTest"

    const-string v2, "================== Starting OIMC TestThread ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCTest$1TestThread;->start()V

    .line 2559
    return-void

    .line 2490
    .end local v0    # "tt":Lcom/oneplus/server/OIMCTest$1TestThread;
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method
