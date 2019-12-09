.class Lcom/android/server/FontService$FontHandler;
.super Landroid/os/Handler;
.source "FontService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FontService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FontHandler"
.end annotation


# static fields
.field private static final MESSAGE_CHANGE_FONT:I = 0x2

.field private static final MESSAGE_INITIALIZE_MAP:I = 0x1

.field private static final MESSAGE_PACKAGE_ADDED_OR_UPDATED:I = 0x3

.field private static final MESSAGE_PACKAGE_REMOVED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/FontService;


# direct methods
.method public constructor <init>(Lcom/android/server/FontService;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0}, Lcom/android/server/FontService;->access$800(Lcom/android/server/FontService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0}, Lcom/android/server/FontService;->access$800(Lcom/android/server/FontService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    const-string v1, "FontService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was removed. Clearing fonts from provider map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v1, p1}, Lcom/android/server/FontService;->access$1000(Lcom/android/server/FontService;Ljava/lang/String;)V

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0}, Lcom/android/server/FontService;->access$1100(Lcom/android/server/FontService;)Landroid/content/FontInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/FontInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provided the current font. Restoring to system font"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {}, Landroid/content/FontInfo;->getDefaultFontInfo()Landroid/content/FontInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/FontService;->access$600(Lcom/android/server/FontService;Landroid/content/FontInfo;)V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 145
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0, p1}, Lcom/android/server/FontService;->access$700(Lcom/android/server/FontService;Ljava/lang/String;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was added or updated. Adding or updating fonts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0}, Lcom/android/server/FontService;->access$800(Lcom/android/server/FontService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_2
    iget-object v1, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v1, p1}, Lcom/android/server/FontService;->access$900(Lcom/android/server/FontService;Ljava/lang/String;)V

    .line 151
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 141
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/FontInfo;

    .line 142
    iget-object v0, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {v0, p1}, Lcom/android/server/FontService;->access$600(Lcom/android/server/FontService;Landroid/content/FontInfo;)V

    .line 143
    goto :goto_0

    .line 138
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/FontService$FontHandler;->this$0:Lcom/android/server/FontService;

    invoke-static {p1}, Lcom/android/server/FontService;->access$500(Lcom/android/server/FontService;)V

    .line 139
    nop

    .line 175
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
