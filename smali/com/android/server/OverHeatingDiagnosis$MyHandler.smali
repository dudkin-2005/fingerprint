.class Lcom/android/server/OverHeatingDiagnosis$MyHandler;
.super Landroid/os/Handler;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BATTERY_CHANGED:I = 0x1

.field public static final MSG_INIT:I = 0x0

.field public static final MSG_MONITOR_END:I = 0x4

.field public static final MSG_MONITOR_START:I = 0x2

.field public static final MSG_MONITOR_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 884
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    .line 885
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 886
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 890
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d8

    goto/16 :goto_d6

    .line 933
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V

    .line 935
    monitor-exit v0

    .line 936
    goto/16 :goto_d6

    .line 935
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v1

    .line 926
    :pswitch_37
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "enter MSG_MONITOR_UPDATE"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 928
    :try_start_45
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorUpdateLocked()V

    .line 929
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_55

    .line 930
    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "leave MSG_MONITOR_UPDATE"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    goto/16 :goto_d6

    .line 929
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1

    .line 921
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 922
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorStartLocked()V

    .line 923
    monitor-exit v0

    .line 924
    goto :goto_d6

    .line 923
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_66

    throw v1

    .line 898
    :pswitch_69
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 899
    .local v0, "level":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 900
    .local v1, "chargePlug":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 902
    .local v2, "charging":Z
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v3

    .line 903
    .local v3, "temp":I
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCurrentLevel:I
    invoke-static {v4, v0}, Lcom/android/server/OverHeatingDiagnosis;->access$702(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 904
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I
    invoke-static {v4, v1}, Lcom/android/server/OverHeatingDiagnosis;->access$802(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 905
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # setter for: Lcom/android/server/OverHeatingDiagnosis;->mCurrentTemp:I
    invoke-static {v4, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$902(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 909
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I
    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    if-eqz v4, :cond_93

    .line 910
    goto :goto_d6

    .line 912
    :cond_93
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->addRecord(IIIZ)V

    .line 915
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # invokes: Lcom/android/server/OverHeatingDiagnosis;->triggerMonitor()Z
    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1100(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 916
    const-string v4, "OverHeatingDiagnosis"

    const-string v5, "Temperature is up! Start monitoring"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d6

    .line 893
    .end local v0    # "level":I
    .end local v1    # "chargePlug":I
    .end local v2    # "charging":Z
    .end local v3    # "temp":I
    :pswitch_b6
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$400(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/android/server/OverHeatingDiagnosis;->access$600(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 894
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis;->registerOnlineConfig()V

    .line 895
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis;->grabOnlineConfig()V

    .line 896
    nop

    .line 940
    :cond_d6
    :goto_d6
    return-void

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_69
        :pswitch_58
        :pswitch_37
        :pswitch_25
    .end packed-switch
.end method
