.class final Lcom/android/server/am/OemQuickReply$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemQuickReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;)V
    .registers 6
    .param p2, "handler"    # Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    .line 994
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$SettingsObserver;->this$0:Lcom/android/server/am/OemQuickReply;

    .line 995
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 996
    # getter for: Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 997
    .local p1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "op_quickreply_im_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 999
    const-string/jumbo v0, "op_quickreply_ime_adjust"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1001
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$SettingsObserver;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$2000(Lcom/android/server/am/OemQuickReply;)V

    .line 1004
    return-void
.end method
