.class Lcom/android/server/am/ActivityManagerService$32;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 26396
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$32;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$32;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 26399
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$32;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 26400
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 26404
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 26399
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 26405
    const/4 v0, 0x0

    .line 26407
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$32;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 26408
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$32;->val$heapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 26413
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$32;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_28} :catch_6a
    .catchall {:try_start_16 .. :try_end_28} :catchall_68

    .line 26414
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_60

    .line 26416
    :try_start_2a
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_50

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting dump heap from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$32;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$32;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26419
    :cond_50
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$32;->val$heapdumpFile:Ljava/io/File;

    .line 26421
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26419
    move-object v2, v1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5e} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_5e} :catch_6a
    .catchall {:try_start_2a .. :try_end_5e} :catchall_68

    .line 26423
    goto :goto_60

    .line 26422
    :catch_5f
    move-exception v2

    .line 26428
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_60
    :goto_60
    if-eqz v0, :cond_74

    .line 26430
    :try_start_62
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 26432
    :goto_65
    goto :goto_74

    .line 26431
    :catch_66
    move-exception v1

    goto :goto_65

    .line 26428
    :catchall_68
    move-exception v1

    goto :goto_75

    .line 26425
    :catch_6a
    move-exception v1

    .line 26426
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    .line 26428
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_74

    .line 26430
    :try_start_70
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_66

    goto :goto_65

    .line 26435
    :cond_74
    :goto_74
    return-void

    .line 26428
    :goto_75
    if-eqz v0, :cond_7c

    .line 26430
    :try_start_77
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 26432
    goto :goto_7c

    .line 26431
    :catch_7b
    move-exception v2

    .line 26432
    :cond_7c
    :goto_7c
    throw v1
.end method
