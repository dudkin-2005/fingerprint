.class Lcom/oneplus/server/OIMCTest$1TestThread;
.super Ljava/lang/Thread;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;

    .line 2492
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "status":Z
    const-string v1, "  TestThread.run"

    .line 2496
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->registerFuncsAndModes()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$700(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 2497
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2498
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2499
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2501
    return-void

    .line 2503
    :cond_28
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    const/4 v6, 0x1

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2505
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->functionTest()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1100(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 2506
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string v5, "functionTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2507
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2508
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2510
    return-void

    .line 2513
    :cond_56
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->runRuleTest()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1200(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 2514
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "runRuleTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2515
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2516
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2518
    return-void

    .line 2521
    :cond_7a
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->ruleConfigTest()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1300(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 2522
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleConfigTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2523
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2524
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2526
    return-void

    .line 2529
    :cond_9e
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->modeChangeTest()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1400(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 2530
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2531
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2532
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2534
    return-void

    .line 2536
    :cond_c2
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2538
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->ruleAddRemoveTest()Z
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1500(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 2539
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleAddRemoveTest"

    # invokes: Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2540
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2541
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2542
    const-string v2, "OIMCTest"

    const-string v3, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    return-void

    .line 2546
    :cond_f0
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # invokes: Lcom/oneplus/server/OIMCTest;->exitTestMode()V
    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2547
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Success ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    # setter for: Lcom/oneplus/server/OIMCTest;->inTesting:Z
    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2549
    return-void
.end method
