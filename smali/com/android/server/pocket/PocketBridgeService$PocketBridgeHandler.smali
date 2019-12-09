.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;
.super Landroid/os/Handler;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeHandler"
.end annotation


# instance fields
.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Looper;)V
    .locals 3

    .line 115
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    .line 120
    invoke-static {p1}, Lcom/android/server/pocket/PocketBridgeService;->access$200(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 123
    new-instance p2, Lcom/android/internal/util/FastPrintWriter;

    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    const/16 v2, 0x80

    invoke-direct {p2, v0, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    iput-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 125
    :catch_0
    move-exception p2

    .line 126
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pocket bridge error occured"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/pocket/PocketBridgeService;->access$400(Lcom/android/server/pocket/PocketBridgeService;Z)V

    .line 129
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 134
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->access$000(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 141
    :cond_1
    return-void
.end method
