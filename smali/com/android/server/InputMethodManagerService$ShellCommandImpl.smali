.class final Lcom/android/server/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShellCommandImpl"
.end annotation


# instance fields
.field final mService:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 4877
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/InputMethodManagerService;

    .line 4808
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4809
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    .line 4810
    return-void
.end method

.method private onImeCommandHelp()V
    .registers 5

    .line 4881
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4882
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4881
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    nop

    .line 4883
    const/4 v1, 0x0

    :try_start_f
    const-string/jumbo v2, "ime <command>:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4884
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4886
    const-string/jumbo v2, "list [-a] [-s]"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4888
    const-string/jumbo v2, "prints all enabled input methods."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4890
    const-string v2, "-a: see all input methods"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4891
    const-string v2, "-s: only a single summary line of each"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4892
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4893
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4895
    const-string v2, "enable <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4897
    const-string v2, "allows the given input method ID to be used."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4900
    const-string v2, "disable <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4902
    const-string v2, "disallows the given input method ID to be used."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4905
    const-string/jumbo v2, "set <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4906
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4907
    const-string/jumbo v2, "switches to the given input method ID."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4910
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4912
    const-string/jumbo v2, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4916
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_81} :catch_87
    .catchall {:try_start_f .. :try_end_81} :catchall_85

    .line 4917
    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4918
    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 4917
    .restart local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_85
    move-exception v2

    goto :goto_89

    .line 4881
    :catch_87
    move-exception v1

    :try_start_88
    throw v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_85

    .line 4917
    :goto_89
    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private refreshDebugProperties()I
    .registers 2

    .line 4859
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4860
    const/4 v0, 0x0

    return v0
.end method

.method private setBindInstantServiceAllowed()I
    .registers 2

    .line 4853
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I
    invoke-static {v0, p0}, Lcom/android/server/InputMethodManagerService;->access$2100(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4816
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4817
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result v0

    return v0

    .line 4819
    :cond_e
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4820
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->setBindInstantServiceAllowed()I

    move-result v0

    return v0

    .line 4824
    :cond_1c
    const-string/jumbo v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 4825
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4826
    .local v0, "imeCommand":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_be

    const-string/jumbo v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto/16 :goto_be

    .line 4830
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_c8

    goto :goto_7e

    :sswitch_49
    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x2

    goto :goto_7f

    :sswitch_53
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x4

    goto :goto_7f

    :sswitch_5e
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    move v2, v1

    goto :goto_7f

    :sswitch_69
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x3

    goto :goto_7f

    :sswitch_74
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    move v2, v3

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v2, v4

    :goto_7f
    packed-switch v2, :pswitch_data_de

    .line 4842
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    return v4

    .line 4840
    :pswitch_9b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4838
    :pswitch_a2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4836
    :pswitch_a9
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    invoke-static {v2, p0, v1}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4834
    :pswitch_b0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    invoke-static {v1, p0, v3}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4832
    :pswitch_b7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4827
    :cond_be
    :goto_be
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 4828
    return v1

    .line 4847
    .end local v0    # "imeCommand":Ljava/lang/String;
    :cond_c2
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x4d6ada7d -> :sswitch_74
        0x1bc62 -> :sswitch_69
        0x32b09e -> :sswitch_5e
        0x6761d4f -> :sswitch_53
        0x639e22e8 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 4866
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4867
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "InputMethodManagerService commands:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    const-string v2, "  help"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    const-string v2, "    Prints this help text."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4870
    const-string v2, "  dump [options]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    const-string v2, "    Synonym of dumpsys."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4872
    const-string v2, "  ime <command> [options]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4873
    const-string v2, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    const-string v2, "  set-bind-instant-service-allowed true|false "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4875
    const-string v2, "    Set whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_32} :catch_3a
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    .line 4877
    if-eqz v0, :cond_37

    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4878
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_37
    return-void

    .line 4877
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_38
    move-exception v2

    goto :goto_3c

    .line 4866
    :catch_3a
    move-exception v1

    :try_start_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 4877
    :goto_3c
    if-eqz v0, :cond_41

    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_41
    throw v2
.end method
