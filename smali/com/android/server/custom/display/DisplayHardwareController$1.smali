.class Lcom/android/server/custom/display/DisplayHardwareController$1;
.super Ljava/lang/Object;
.source "DisplayHardwareController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/custom/display/DisplayHardwareController;->animateDisplayColor([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/DisplayHardwareController;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/DisplayHardwareController;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-virtual {v1}, Lcom/android/server/custom/display/DisplayHardwareController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 323
    iget-object v1, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-static {v1}, Lcom/android/server/custom/display/DisplayHardwareController;->access$100(Lcom/android/server/custom/display/DisplayHardwareController;)Lcom/android/internal/custom/hardware/LineageHardwareManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 324
    invoke-static {v5}, Lcom/android/server/custom/display/DisplayHardwareController;->access$000(Lcom/android/server/custom/display/DisplayHardwareController;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 325
    invoke-static {v5}, Lcom/android/server/custom/display/DisplayHardwareController;->access$000(Lcom/android/server/custom/display/DisplayHardwareController;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    aget p1, p1, v3

    iget-object v4, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    .line 326
    invoke-static {v4}, Lcom/android/server/custom/display/DisplayHardwareController;->access$000(Lcom/android/server/custom/display/DisplayHardwareController;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v2, v3

    .line 323
    invoke-virtual {v1, v2}, Lcom/android/internal/custom/hardware/LineageHardwareManager;->setDisplayColorCalibration([I)Z

    .line 328
    iget-object p1, p0, Lcom/android/server/custom/display/DisplayHardwareController$1;->this$0:Lcom/android/server/custom/display/DisplayHardwareController;

    invoke-static {p1}, Lcom/android/server/custom/display/DisplayHardwareController;->access$200(Lcom/android/server/custom/display/DisplayHardwareController;)V

    .line 330
    :cond_0
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
