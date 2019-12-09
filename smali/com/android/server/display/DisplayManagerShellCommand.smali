.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 36
    return-void
.end method

.method private resetBrightnessConfiguration()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->resetBrightnessConfiguration()V

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: no brightness specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    return v1

    .line 75
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 77
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    move v0, v2

    :goto_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->setBrightness(I)V

    .line 85
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 44
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x59bb9cc8

    if-eq v1, v2, :cond_2

    const v2, 0x5fa7aa9c

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "set-brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "reset-brightness-configuration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result p1

    return p1

    .line 46
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 61
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 66
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 67
    return-void
.end method
