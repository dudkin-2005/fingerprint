.class Lcom/android/server/OemExService$1;
.super Landroid/content/BroadcastReceiver;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemExService;

    .line 181
    iput-object p1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    const-string v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "android.content.pm.extra.STATUS"

    const/16 v1, -0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "callbackStatus":I
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_f2

    if-eqz v1, :cond_f2

    .line 189
    iget-object v2, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vendor_app_installed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "strAppInstalled":Ljava/lang/String;
    if-nez v2, :cond_4f

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 194
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    :goto_63
    iget-object v3, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vendor_app_installed"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    sget-boolean v3, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_92

    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] has been installed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_92
    # operator-- for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$110()I

    .line 199
    # getter for: Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/OemExService;->access$200()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 200
    # getter for: Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/OemExService;->access$200()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_a6
    # getter for: Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/OemExService;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 203
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v3, "installIntent":Landroid/content/Intent;
    const-string v4, "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const v4, 0x1000020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    # getter for: Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/OemExService;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v3    # "installIntent":Landroid/content/Intent;
    :cond_ca
    # getter for: Lcom/android/server/OemExService;->DEBUG_LOGV:Z
    invoke-static {}, Lcom/android/server/OemExService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_f2

    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "done: pkgName = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', mPackageInstallState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$100()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v2    # "strAppInstalled":Ljava/lang/String;
    :cond_f2
    # getter for: Lcom/android/server/OemExService;->mPackageInstallState:I
    invoke-static {}, Lcom/android/server/OemExService;->access$100()I

    move-result v2

    if-nez v2, :cond_13c

    .line 214
    iget-object v2, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "package_verifier_enable"

    # getter for: Lcom/android/server/OemExService;->mPackageVerifierEnable:I
    invoke-static {}, Lcom/android/server/OemExService;->access$500()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_137

    const-string v2, "OemExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All Done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vendor_app_installed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_137
    iget-object v2, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->ungisterPkgInstallReceiver()V
    invoke-static {v2}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;)V

    .line 218
    :cond_13c
    return-void
.end method
