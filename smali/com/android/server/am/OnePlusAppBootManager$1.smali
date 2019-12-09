.class Lcom/android/server/am/OnePlusAppBootManager$1;
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

    .line 2143
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2145
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_5

    .line 2146
    return-void

    .line 2149
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2150
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2152
    :cond_21
    const-string v1, "com.haha.action.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_185

    .line 2153
    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    .local v1, "code":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2155
    const-string/jumbo v6, "persist"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 2156
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_184

    .line 2157
    :cond_57
    const-string/jumbo v2, "prop_using_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2158
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2159
    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2160
    :cond_6d
    const-string/jumbo v2, "prop_using_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2161
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2162
    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2163
    :cond_82
    const-string/jumbo v2, "prop_debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2164
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2165
    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2166
    :cond_98
    const-string/jumbo v2, "prop_debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 2167
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2168
    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2169
    :cond_ad
    const-string/jumbo v2, "prop_blacklist_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 2170
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2171
    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2172
    :cond_c3
    const-string/jumbo v2, "prop_blacklist_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 2173
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2174
    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_184

    .line 2175
    :cond_d8
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 2176
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$500(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2177
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$600(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_184

    .line 2178
    :cond_ec
    const-string v2, "dumplist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 2179
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpList()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$700(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_184

    .line 2180
    :cond_fb
    const-string v2, "dump_widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 2181
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$800(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2182
    :try_start_10a
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mWidgetPkgSet:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$800(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_114
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2183
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "widgetpkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_114

    .line 2185
    :cond_138
    monitor-exit v2

    goto :goto_184

    :catchall_13a
    move-exception v3

    monitor-exit v2
    :try_end_13c
    .catchall {:try_start_10a .. :try_end_13c} :catchall_13a

    throw v3

    .line 2186
    :cond_13d
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 2187
    const-string v2, "@huge@dump"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 2188
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->dumpHugePowerPkgInfo()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$900(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto :goto_184

    .line 2189
    :cond_153
    const-string v2, "@huge@add@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 2190
    const-string v2, "@huge@add@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2191
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V
    invoke-static {v3, v2, v5, v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    .line 2192
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_184

    :cond_16c
    const-string v2, "@huge@start@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 2193
    const-string v2, "@huge@start@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2194
    .restart local v2    # "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPackage(Ljava/lang/String;ZI)V
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    .line 2197
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_184
    :goto_184
    goto :goto_1ee

    :cond_185
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x1f

    if-eqz v1, :cond_1c4

    .line 2198
    # setter for: Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$1102(Z)Z

    .line 2200
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2201
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2202
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2205
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->QUICK_APP_RANK_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_1be

    new-array v5, v5, [I

    const/16 v6, 0x22

    aput v6, v5, v4

    .line 2206
    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 2207
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessage(I)Z

    .line 2210
    :cond_1be
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V
    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2211
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1ee

    :cond_1c4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    .line 2212
    # setter for: Lcom/android/server/am/OnePlusAppBootManager;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$1102(Z)Z

    .line 2214
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2215
    .restart local v1    # "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 2216
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2217
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1ee

    :cond_1e1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 2218
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->responseSIMStateChanged()Z
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1300(Lcom/android/server/am/OnePlusAppBootManager;)Z

    .line 2220
    :cond_1ee
    :goto_1ee
    return-void
.end method
