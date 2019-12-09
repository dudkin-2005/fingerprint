.class Lcom/android/server/FontService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FontService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FontService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FontService;


# direct methods
.method private constructor <init>(Lcom/android/server/FontService;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/FontService$PackageReceiver;->this$0:Lcom/android/server/FontService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/FontService;Lcom/android/server/FontService$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/FontService$PackageReceiver;-><init>(Lcom/android/server/FontService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string p1, "FontService"

    const-string p2, "Cannot handle package broadcast with null data"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xa480416

    if-eq v1, v2, :cond_3

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_2

    const v2, 0x5c1076e2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 200
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/FontService$PackageReceiver;->this$0:Lcom/android/server/FontService;

    invoke-static {p2}, Lcom/android/server/FontService;->access$1200(Lcom/android/server/FontService;)Lcom/android/server/FontService$FontHandler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/server/FontService$FontHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 202
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/android/server/FontService$PackageReceiver;->this$0:Lcom/android/server/FontService;

    invoke-static {p1}, Lcom/android/server/FontService;->access$1200(Lcom/android/server/FontService;)Lcom/android/server/FontService$FontHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/FontService$FontHandler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    goto :goto_1

    .line 194
    :pswitch_1
    iget-object p2, p0, Lcom/android/server/FontService$PackageReceiver;->this$0:Lcom/android/server/FontService;

    invoke-static {p2}, Lcom/android/server/FontService;->access$1200(Lcom/android/server/FontService;)Lcom/android/server/FontService$FontHandler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/server/FontService$FontHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 196
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    iget-object p1, p0, Lcom/android/server/FontService$PackageReceiver;->this$0:Lcom/android/server/FontService;

    invoke-static {p1}, Lcom/android/server/FontService;->access$1200(Lcom/android/server/FontService;)Lcom/android/server/FontService$FontHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/FontService$FontHandler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    nop

    .line 208
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
