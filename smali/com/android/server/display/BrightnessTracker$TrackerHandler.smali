.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 816
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 817
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 818
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 820
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_3d

    .line 832
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->startSensorListener()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1200(Lcom/android/server/display/BrightnessTracker;)V

    .line 833
    goto :goto_3d

    .line 835
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1300(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_3d

    .line 825
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 826
    .local v0, "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    :goto_1b
    move v5, v2

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 827
    .local v5, "userInitiatedChange":Z
    :goto_1f
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v4, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v6, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v9, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    # invokes: Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJ)V
    invoke-static/range {v3 .. v10}, Lcom/android/server/display/BrightnessTracker;->access$1100(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V

    .line 830
    goto :goto_3d

    .line 822
    .end local v0    # "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    .end local v5    # "userInitiatedChange":Z
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->access$1000(Lcom/android/server/display/BrightnessTracker;F)V

    .line 823
    nop

    .line 838
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
