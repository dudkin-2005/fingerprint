.class Lcom/android/server/OemExService$4;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;

.field final synthetic val$apkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OemExService;

    .line 444
    iput-object p1, p0, Lcom/android/server/OemExService$4;->this$0:Lcom/android/server/OemExService;

    iput-object p2, p0, Lcom/android/server/OemExService$4;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemExService$4;->this$0:Lcom/android/server/OemExService;

    iget-object v1, p0, Lcom/android/server/OemExService$4;->val$apkPath:Ljava/lang/String;

    # invokes: Lcom/android/server/OemExService;->listAPKs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 451
    goto :goto_11

    .line 449
    :catch_8
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OemExService"

    const-string/jumbo v2, "installAPKs error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11
    return-void
.end method
