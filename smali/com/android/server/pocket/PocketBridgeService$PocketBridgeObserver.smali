.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;
.super Landroid/database/ContentObserver;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Handler;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 150
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 155
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketBridgeService;->access$200(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "pocket_judge"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    nop

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p1, v1}, Lcom/android/server/pocket/PocketBridgeService;->access$400(Lcom/android/server/pocket/PocketBridgeService;Z)V

    .line 158
    return-void
.end method

.method public register()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->access$200(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pocket_judge"

    .line 163
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 166
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->access$200(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 173
    :cond_0
    return-void
.end method
