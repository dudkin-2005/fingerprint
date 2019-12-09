.class Lcom/android/server/am/OnePlusAppBootManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 2273
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2275
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 2276
    return-void

    .line 2278
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2279
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mPackageReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2281
    :cond_29
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-eqz v1, :cond_87

    .line 2282
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2283
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_3b

    .line 2284
    return-void

    .line 2286
    :cond_3b
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2287
    .local v5, "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_57

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2288
    :cond_57
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2289
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2291
    :cond_70
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x15

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2292
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2293
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    goto/16 :goto_121

    :cond_87
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 2294
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2295
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_96

    .line 2296
    return-void

    .line 2298
    :cond_96
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2299
    .restart local v5    # "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_b2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap removed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2300
    :cond_b2
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x16

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2301
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2302
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    goto :goto_121

    :cond_c8
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 2303
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2304
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_d7

    .line 2305
    return-void

    .line 2307
    :cond_d7
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2308
    .restart local v5    # "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_f3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap added "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2309
    :cond_f3
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 2310
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2312
    :cond_10c
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x17

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2313
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2316
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_121
    :goto_121
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/16 v2, 0x4e20

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2317
    return-void
.end method
