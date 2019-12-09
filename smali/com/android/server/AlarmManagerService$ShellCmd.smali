.class Lcom/android/server/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 4332
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .locals 0

    .line 4332
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method getBinderService()Landroid/app/IAlarmManager;
    .locals 1

    .line 4335
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5

    .line 4340
    if-nez p1, :cond_0

    .line 4341
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4344
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4346
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519f2558

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 4355
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 4351
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 4352
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 4353
    return v4

    .line 4348
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4349
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    move v1, v4

    nop

    :cond_4
    return v1

    .line 4355
    :goto_2
    return p1

    .line 4357
    :catch_0
    move-exception p1

    .line 4358
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4360
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 4365
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4366
    const-string v1, "Alarm manager service (alarm) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4368
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4369
    const-string v1, "  set-time TIME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4370
    const-string v1, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4371
    const-string v1, "    since the Epoch."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4372
    const-string v1, "  set-timezone TZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4373
    const-string v1, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4374
    return-void
.end method
