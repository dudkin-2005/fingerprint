.class Lcom/android/server/am/AppErrorDialog$2;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"

# interfaces
.implements Lcom/android/internal/util/DogbinUtils$UploadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorDialog;->postToDogbinAndCopyURL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10406f4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    const-string v0, "AppErrorDialog"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 224
    const-string v1, "Log URL"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 227
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {p1}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10406f5

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method
