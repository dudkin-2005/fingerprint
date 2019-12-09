.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0

    .line 16050
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 16053
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 16054
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16057
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16058
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 16059
    const/high16 v1, 0x30000

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr v1, v3

    .line 16062
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    .line 16064
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-static {v4, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16068
    goto :goto_0

    .line 16066
    :catch_0
    move-exception v1

    .line 16067
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16070
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 16071
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16074
    :cond_2
    if-lez v0, :cond_5

    .line 16075
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16078
    const/4 v1, 0x0

    .line 16080
    :try_start_1
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v4, 0x11

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "/system/bin/timeout"

    aput-object v5, v4, v2

    const-string v5, "-k"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "15s"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "10s"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "/system/bin/logcat"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string v7, "-v"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v7, "threadtime"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    const-string v7, "-b"

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string v7, "events"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const-string v7, "-b"

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v7, "system"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const-string v7, "-b"

    aput-object v7, v4, v5

    const/16 v5, 0xc

    const-string v7, "main"

    aput-object v7, v4, v5

    const/16 v5, 0xd

    const-string v7, "-b"

    aput-object v7, v4, v5

    const/16 v5, 0xe

    const-string v7, "crash"

    aput-object v7, v4, v5

    const/16 v5, 0xf

    const-string v7, "-t"

    aput-object v7, v4, v5

    const/16 v5, 0x10

    .line 16083
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 16084
    invoke-virtual {v3, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16086
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 16087
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 16088
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16091
    const/16 v0, 0x2000

    :try_start_5
    new-array v0, v0, [C

    .line 16092
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 16096
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_5

    .line 16093
    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 16096
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 16093
    :catch_5
    move-exception v0

    .line 16094
    :goto_4
    :try_start_7
    const-string v2, "ActivityManager"

    const-string v3, "Error running logcat"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 16096
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :goto_5
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :cond_4
    :goto_6
    throw v0

    .line 16100
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 16101
    return-void
.end method
