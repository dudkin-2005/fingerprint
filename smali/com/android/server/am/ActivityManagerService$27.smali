.class Lcom/android/server/am/ActivityManagerService$27;
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
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 17754
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 17757
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 17758
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17763
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 17765
    .local v1, "lines":I
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17766
    .local v2, "setting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_2f

    move v1, v3

    .line 17769
    .end local v2    # "setting":Ljava/lang/String;
    goto :goto_33

    .line 17767
    :catch_2f
    move-exception v2

    .line 17768
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17772
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    const/high16 v2, 0x30000

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    .line 17775
    .local v2, "maxDataFileSize":I
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    if-eqz v3, :cond_6c

    if-lez v2, :cond_6c

    .line 17777
    :try_start_45
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-static {v4, v2, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_52} :catch_53

    .line 17781
    goto :goto_6c

    .line 17779
    :catch_53
    move-exception v3

    .line 17780
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17783
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6c
    :goto_6c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v3, :cond_7f

    .line 17784
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17787
    :cond_7f
    if-lez v1, :cond_144

    .line 17788
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17791
    const/4 v3, 0x0

    .line 17793
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_89
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "/system/bin/timeout"

    aput-object v6, v5, v0

    const-string v6, "-k"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, "15s"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "10s"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "/system/bin/logcat"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    const-string v8, "-v"

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v8, "threadtime"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0x8

    const-string v8, "events"

    aput-object v8, v5, v6

    const/16 v6, 0x9

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v8, "system"

    aput-object v8, v5, v6

    const/16 v6, 0xb

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v8, "main"

    aput-object v8, v5, v6

    const/16 v6, 0xd

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xe

    const-string v8, "crash"

    aput-object v8, v5, v6

    const/16 v6, 0xf

    const-string v8, "-t"

    aput-object v8, v5, v6

    const/16 v6, 0x10

    .line 17796
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 17797
    invoke-virtual {v4, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_fc} :catch_131
    .catchall {:try_start_89 .. :try_end_fc} :catchall_12f

    .line 17799
    .local v4, "logcat":Ljava/lang/Process;
    :try_start_fc
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_103} :catch_104
    .catchall {:try_start_fc .. :try_end_103} :catchall_12f

    goto :goto_105

    :catch_104
    move-exception v5

    .line 17800
    :goto_105
    :try_start_105
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_10d
    .catchall {:try_start_105 .. :try_end_10c} :catchall_12f

    goto :goto_10e

    :catch_10d
    move-exception v5

    .line 17801
    :goto_10e
    :try_start_10e
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 17804
    const/16 v5, 0x2000

    new-array v5, v5, [C

    .line 17805
    .local v5, "buf":[C
    :goto_11c
    invoke-virtual {v3, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .line 17805
    .local v7, "num":I
    if-lez v6, :cond_129

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5, v0, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_128} :catch_131
    .catchall {:try_start_10e .. :try_end_128} :catchall_12f

    goto :goto_11c

    .line 17809
    .end local v4    # "logcat":Ljava/lang/Process;
    .end local v5    # "buf":[C
    .end local v7    # "num":I
    :cond_129
    :goto_129
    :try_start_129
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    goto :goto_144

    :catch_12d
    move-exception v0

    goto :goto_144

    :catchall_12f
    move-exception v0

    goto :goto_13c

    .line 17806
    :catch_131
    move-exception v0

    .line 17807
    .local v0, "e":Ljava/io/IOException;
    :try_start_132
    const-string v4, "ActivityManager"

    const-string v5, "Error running logcat"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_132 .. :try_end_139} :catchall_12f

    .line 17809
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_144

    goto :goto_129

    :goto_13c
    if-eqz v3, :cond_143

    :try_start_13e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_142

    goto :goto_143

    :catch_142
    move-exception v4

    :cond_143
    :goto_143
    throw v0

    .line 17813
    .end local v3    # "input":Ljava/io/InputStreamReader;
    :cond_144
    :goto_144
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 17814
    return-void
.end method
