.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/RecoverySystemService;
    .param p2, "x1"    # Lcom/android/server/RecoverySystemService$1;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 11

    .line 206
    const/4 v0, 0x0

    move v1, v0

    .line 206
    .local v1, "retry":I
    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_8c

    .line 207
    const-string/jumbo v2, "init.svc.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "uncryptService":Ljava/lang/String;
    const-string/jumbo v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "setupBcbService":Ljava/lang/String;
    const-string/jumbo v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3a

    const-string/jumbo v5, "running"

    .line 211
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_3a

    :cond_38
    move v5, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v5, v6

    .line 213
    .local v5, "busy":Z
    :goto_3b
    const-string v7, "RecoverySystemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " busy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " uncrypt: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] setupBcb: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] clearBcb: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez v5, :cond_7a

    .line 220
    return v6

    .line 224
    :cond_7a
    const-wide/16 v6, 0x3e8

    :try_start_7c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 227
    goto :goto_88

    .line 225
    :catch_80
    move-exception v6

    .line 226
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v7, "RecoverySystemService"

    const-string v8, "Interrupted:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v2    # "uncryptService":Ljava/lang/String;
    .end local v3    # "setupBcbService":Ljava/lang/String;
    .end local v4    # "clearBcbService":Ljava/lang/String;
    .end local v5    # "busy":Z
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 230
    .end local v1    # "retry":I
    :cond_8c
    return v0
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 8

    .line 234
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 235
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 239
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 239
    .local v2, "retry":I
    :goto_7
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2c

    .line 241
    :try_start_b
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v4, "uncrypt"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_1a

    .line 243
    const/4 v1, 0x1

    .line 244
    goto :goto_2c

    .line 245
    :catch_1a
    move-exception v3

    .line 247
    .local v3, "ignored":Ljava/io/IOException;
    const-wide/16 v4, 0x3e8

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 250
    goto :goto_29

    .line 248
    :catch_21
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "RecoverySystemService"

    const-string v6, "Interrupted:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 253
    .end local v2    # "retry":I
    :cond_2c
    :goto_2c
    if-nez v1, :cond_37

    .line 254
    const-string v2, "RecoverySystemService"

    const-string v3, "Timed out connecting to uncrypt socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v2, 0x0

    return-object v2

    .line 257
    :cond_37
    return-object v0
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 12
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 264
    .local v0, "available":Z
    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 265
    const-string v2, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v1

    .line 269
    :cond_1c
    if-eqz p1, :cond_27

    .line 270
    const-string v3, "ctl.start"

    const-string/jumbo v4, "setup-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 272
    :cond_27
    const-string v3, "ctl.start"

    const-string v4, "clear-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v3

    .line 277
    .local v3, "socket":Landroid/net/LocalSocket;
    if-nez v3, :cond_3c

    .line 278
    const-string v2, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v1

    .line 282
    :cond_3c
    const/4 v4, 0x0

    .line 283
    .local v4, "dis":Ljava/io/DataInputStream;
    nop

    .line 285
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_3e
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 286
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v5

    .line 289
    if-eqz p1, :cond_65

    .line 290
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 291
    .local v5, "cmdUtf8":[B
    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 292
    array-length v6, v5

    invoke-virtual {v2, v5, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 293
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 297
    .end local v5    # "cmdUtf8":[B
    :cond_65
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 301
    .local v5, "status":I
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    const/16 v6, 0x64

    if-ne v5, v6, :cond_a0

    .line 304
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_83

    const-string/jumbo v8, "setup"

    goto :goto_85

    :cond_83
    const-string v8, "clear"

    :goto_85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bcb successfully finished."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_94} :catch_c4
    .catchall {:try_start_3e .. :try_end_94} :catchall_c2

    .line 315
    .end local v5    # "status":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    nop

    .line 320
    const/4 v1, 0x1

    return v1

    .line 308
    .restart local v5    # "status":I
    :cond_a0
    :try_start_a0
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt failed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b7} :catch_c4
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_c2

    .line 309
    nop

    .line 315
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 309
    return v1

    .line 315
    .end local v5    # "status":I
    :catchall_c2
    move-exception v1

    goto :goto_d7

    .line 311
    :catch_c4
    move-exception v5

    .line 312
    .local v5, "e":Ljava/io/IOException;
    :try_start_c5
    const-string v6, "RecoverySystemService"

    const-string v7, "IOException when communicating with uncrypt:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_c2

    .line 313
    nop

    .line 315
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    return v1

    .line 315
    .end local v5    # "e":Ljava/io/IOException;
    :goto_d7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    .line 171
    const-string v0, "RecoverySystemService"

    const-string v1, "clearBcb"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 174
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .line 187
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootRecoveryWithCommand: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    const/4 v1, 0x1

    :try_start_22
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 190
    monitor-exit v0

    return-void

    .line 194
    :cond_2a
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 195
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 196
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .line 179
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupBcb: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 181
    const/4 v1, 0x1

    :try_start_22
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 182
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 80
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    .line 86
    .local v1, "available":Z
    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 87
    const-string v3, "RecoverySystemService"

    const-string/jumbo v4, "uncrypt service is unavailable."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v0

    return v2

    .line 93
    :cond_39
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_157

    .line 95
    :try_start_3e
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_137
    .catchall {:try_start_3e .. :try_end_45} :catchall_157

    .line 96
    .local v4, "uncryptFile":Ljava/io/FileWriter;
    :try_start_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_59} :catch_126
    .catchall {:try_start_45 .. :try_end_59} :catchall_124

    .line 97
    :try_start_59
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_137
    .catchall {:try_start_59 .. :try_end_5c} :catchall_157

    .line 101
    .end local v4    # "uncryptFile":Ljava/io/FileWriter;
    nop

    .line 104
    :try_start_5d
    const-string v4, "ctl.start"

    const-string/jumbo v5, "uncrypt"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v4

    .line 108
    .local v4, "socket":Landroid/net/LocalSocket;
    if-nez v4, :cond_74

    .line 109
    const-string v3, "RecoverySystemService"

    const-string v5, "Failed to connect to uncrypt socket"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_157

    return v2

    .line 114
    :cond_74
    const/4 v5, 0x0

    .line 115
    .local v5, "dis":Ljava/io/DataInputStream;
    nop

    .line 117
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_76
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 118
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    .line 119
    const/high16 v6, -0x80000000

    move v7, v6

    .line 121
    .local v7, "lastStatus":I
    :goto_8d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 123
    .local v8, "status":I
    if-ne v8, v7, :cond_96

    if-eq v7, v6, :cond_96

    .line 124
    goto :goto_8d

    .line 126
    :cond_96
    move v7, v8

    .line 128
    if-ltz v8, :cond_de

    const/16 v9, 0x64

    if-gt v8, v9, :cond_de

    .line 130
    const-string v10, "RecoverySystemService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uncrypt read status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_b4} :catch_106
    .catchall {:try_start_76 .. :try_end_b4} :catchall_104

    .line 131
    if-eqz p2, :cond_c2

    .line 133
    :try_start_b6
    invoke-interface {p2, v8}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_b9} :catch_ba
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_106
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_104

    .line 136
    goto :goto_c2

    .line 134
    :catch_ba
    move-exception v10

    .line 135
    .local v10, "ignored":Landroid/os/RemoteException;
    :try_start_bb
    const-string v11, "RecoverySystemService"

    const-string v12, "RemoteException when posting progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v10    # "ignored":Landroid/os/RemoteException;
    :cond_c2
    :goto_c2
    if-ne v8, v9, :cond_dd

    .line 139
    const-string v6, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt successfully finished."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_cf} :catch_106
    .catchall {:try_start_bb .. :try_end_cf} :catchall_104

    .line 144
    nop

    .line 160
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :try_start_d0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 163
    nop

    .line 165
    const/4 v2, 0x1

    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_157

    return v2

    .line 155
    .restart local v7    # "lastStatus":I
    :cond_dd
    goto :goto_8d

    .line 148
    .restart local v8    # "status":I
    :cond_de
    :try_start_de
    const-string v6, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_f8} :catch_106
    .catchall {:try_start_de .. :try_end_f8} :catchall_104

    .line 153
    nop

    .line 160
    :try_start_f9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_157

    .line 153
    return v2

    .line 160
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :catchall_104
    move-exception v2

    goto :goto_11a

    .line 156
    :catch_106
    move-exception v6

    .line 157
    .local v6, "e":Ljava/io/IOException;
    :try_start_107
    const-string v7, "RecoverySystemService"

    const-string v8, "IOException when reading status: "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_104

    .line 158
    nop

    .line 160
    :try_start_10f
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 158
    return v2

    .line 160
    .end local v6    # "e":Ljava/io/IOException;
    :goto_11a
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 162
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_124
    .catchall {:try_start_10f .. :try_end_124} :catchall_157

    .line 97
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .local v4, "uncryptFile":Ljava/io/FileWriter;
    :catchall_124
    move-exception v5

    goto :goto_128

    .line 95
    :catch_126
    move-exception v3

    :try_start_127
    throw v3
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_124

    .line 97
    :goto_128
    if-eqz v3, :cond_133

    :try_start_12a
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_12d} :catch_12e
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_137
    .catchall {:try_start_12a .. :try_end_12d} :catchall_157

    goto :goto_136

    :catch_12e
    move-exception v6

    :try_start_12f
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_136

    :cond_133
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    :goto_136
    throw v5
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_137} :catch_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_157

    .line 97
    .end local v4    # "uncryptFile":Ljava/io/FileWriter;
    :catch_137
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    :try_start_138
    const-string v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when writing \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    monitor-exit v0

    return v2

    .line 166
    .end local v1    # "available":Z
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_157
    move-exception v1

    monitor-exit v0
    :try_end_159
    .catchall {:try_start_138 .. :try_end_159} :catchall_157

    throw v1
.end method
