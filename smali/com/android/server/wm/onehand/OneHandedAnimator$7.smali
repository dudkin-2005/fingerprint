.class Lcom/android/server/wm/onehand/OneHandedAnimator$7;
.super Landroid/database/ContentObserver;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;->registerMagnificationSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Handler;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$7;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 576
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$7;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1200(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    .line 577
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$7;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1500(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$7;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 580
    :cond_0
    return-void
.end method
