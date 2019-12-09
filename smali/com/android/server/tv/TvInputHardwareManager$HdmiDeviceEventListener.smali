.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;
.super Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiDeviceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .locals 0

    .line 1214
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method

.method private findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1267
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1268
    return-object v1

    .line 1270
    :cond_0
    goto :goto_0

    .line 1271
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 4

    .line 1217
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1219
    nop

    .line 1220
    const/4 v1, 0x0

    .line 1221
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1256
    move p2, v2

    goto/16 :goto_1

    .line 1244
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    .line 1245
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1246
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The list doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    monitor-exit v0

    return-void

    .line 1249
    :cond_1
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    const/4 p2, 0x6

    .line 1251
    nop

    .line 1252
    goto :goto_0

    .line 1234
    :pswitch_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    .line 1235
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1236
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The list doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    monitor-exit v0

    return-void

    .line 1239
    :cond_2
    const/4 p2, 0x5

    .line 1240
    nop

    .line 1241
    nop

    .line 1256
    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 1223
    :pswitch_2
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1224
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    const/4 p2, 0x4

    .line 1230
    nop

    .line 1231
    goto :goto_0

    .line 1226
    :cond_3
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The list already contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    monitor-exit v0

    return-void

    .line 1256
    :goto_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1257
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2400(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1258
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1260
    :cond_4
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :goto_2
    monitor-exit v0

    .line 1263
    return-void

    .line 1262
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
