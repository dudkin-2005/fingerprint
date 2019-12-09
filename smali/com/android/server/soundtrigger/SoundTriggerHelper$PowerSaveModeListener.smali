.class Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 865
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 866
    return-void

    .line 868
    :cond_0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 871
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$300(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V

    .line 873
    monitor-exit p2

    .line 874
    return-void

    .line 873
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
