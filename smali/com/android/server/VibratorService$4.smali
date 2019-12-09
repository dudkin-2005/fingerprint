.class Lcom/android/server/VibratorService$4;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1200
    iget-object p1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1206
    :try_start_0
    iget-object p2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p2}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    .line 1207
    invoke-static {p2}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    .line 1208
    invoke-static {p2}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/VibratorService$Vibration;->isFromSystem()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1209
    :cond_0
    iget-object p2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 1211
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1213
    :cond_2
    :goto_0
    return-void
.end method
