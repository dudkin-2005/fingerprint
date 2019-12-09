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
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 1321
    iput-object p1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1325
    iget-object v0, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1333
    :try_start_13
    iget-object v1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLidState:I
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)I

    move-result v1

    if-nez v1, :cond_25

    .line 1334
    const-string v1, "VibratorService"

    const-string/jumbo v2, "vibrate service don\'t cancel when lidState is close "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    monitor-exit v0

    return-void

    .line 1339
    :cond_25
    iget-object v1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    .line 1340
    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    .line 1341
    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isFromSystem()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1342
    :cond_45
    iget-object v1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 1344
    :cond_4a
    monitor-exit v0

    goto :goto_68

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_13 .. :try_end_4e} :catchall_4c

    throw v1

    .line 1347
    :cond_4f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1348
    iget-object v0, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    const-string/jumbo v1, "lidOpen"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/VibratorService;->mLidState:I
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1002(Lcom/android/server/VibratorService;I)I

    .line 1351
    :cond_68
    :goto_68
    return-void
.end method
