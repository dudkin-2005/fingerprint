.class Lcom/android/server/notification/NotificationManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 7225
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0

    .line 7225
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5

    .line 7238
    if-nez p1, :cond_0

    .line 7239
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7241
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 7243
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "allow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "disallow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "suspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "allow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_4
    const-string v2, "disallow_dnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "allow_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "unsuspend_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "disallow_assistant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 7314
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_5

    .line 7310
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 7312
    goto/16 :goto_4

    .line 7305
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 7307
    goto/16 :goto_4

    .line 7295
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 7296
    if-nez p1, :cond_2

    .line 7297
    const-string p1, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7298
    return v3

    .line 7300
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 7302
    goto/16 :goto_4

    .line 7286
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 7287
    if-nez p1, :cond_3

    .line 7288
    const-string p1, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7289
    return v3

    .line 7291
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 7293
    goto/16 :goto_4

    .line 7271
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 7272
    if-nez p1, :cond_4

    .line 7273
    const-string p1, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7274
    return v3

    .line 7276
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 7277
    if-nez v2, :cond_5

    .line 7278
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_2

    .line 7280
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 7281
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7280
    invoke-interface {v3, p1, v2, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 7284
    :goto_2
    goto :goto_4

    .line 7256
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 7257
    if-nez p1, :cond_6

    .line 7258
    const-string p1, "Invalid listener - must be a ComponentName"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7259
    return v3

    .line 7261
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 7262
    if-nez v2, :cond_7

    .line 7263
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto :goto_3

    .line 7265
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 7266
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7265
    invoke-interface {v3, p1, v2, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 7269
    :goto_3
    goto :goto_4

    .line 7251
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p1

    .line 7252
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7251
    invoke-interface {p1, v2, v1}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 7254
    goto :goto_4

    .line 7245
    :pswitch_7
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p1

    .line 7246
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7245
    invoke-interface {p1, v2, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7248
    nop

    .line 7319
    :goto_4
    goto :goto_6

    .line 7314
    :goto_5
    return p1

    .line 7316
    :catch_0
    move-exception p1

    .line 7317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred. Check logcat for details. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7318
    const-string v0, "NotificationService"

    const-string v2, "Error running shell command"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7320
    :goto_6
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f05a8e6 -> :sswitch_7
        -0x1e34b476 -> :sswitch_6
        -0x19cf0b16 -> :sswitch_5
        -0x199eb9aa -> :sswitch_4
        0x16318b24 -> :sswitch_3
        0x177b7f43 -> :sswitch_2
        0x4af068f8 -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 7325
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nallow_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE\nsuspend_package PACKAGE\nunsuspend_package PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7326
    return-void
.end method
