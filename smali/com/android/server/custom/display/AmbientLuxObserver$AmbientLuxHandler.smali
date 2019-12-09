.class Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;
.super Landroid/os/Handler;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLuxHandler"
.end annotation


# static fields
.field private static final MSG_TRANSITION:I = 0x1

.field private static final MSG_UPDATE_LUX:I


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/AmbientLuxObserver;Landroid/os/Looper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 89
    nop

    .line 90
    nop

    .line 92
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    monitor-enter v0

    .line 93
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 101
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 96
    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$000(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->add(F)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$000(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$102(Lcom/android/server/custom/display/AmbientLuxObserver;F)F

    .line 103
    invoke-static {}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "AmbientLuxObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lux= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$300(Lcom/android/server/custom/display/AmbientLuxObserver;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mAmbientLux="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    .line 105
    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$100(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$300(Lcom/android/server/custom/display/AmbientLuxObserver;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$400(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result p1

    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$500(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result v2

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$400(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result p1

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$100(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result v2

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_2

    .line 111
    move p1, v1

    goto :goto_2

    .line 110
    :cond_2
    const/4 p1, 0x0

    .line 111
    :goto_2
    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$300(Lcom/android/server/custom/display/AmbientLuxObserver;)I

    move-result v2

    if-eq v2, p1, :cond_3

    .line 112
    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2, p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$302(Lcom/android/server/custom/display/AmbientLuxObserver;I)I

    .line 113
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$600(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$600(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v2}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$300(Lcom/android/server/custom/display/AmbientLuxObserver;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v3}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$100(Lcom/android/server/custom/display/AmbientLuxObserver;)F

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;->onTransition(IF)V

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$000(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->removeMessages(I)V

    .line 122
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$700(Lcom/android/server/custom/display/AmbientLuxObserver;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_4
    :goto_3
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
