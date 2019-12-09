.class Lcom/android/server/wm/onehand/OneHandedAnimator$3;
.super Landroid/database/ContentObserver;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;->registerObservers()V
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

    .line 414
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$3;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 417
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$3;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$3;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 421
    :cond_0
    return-void
.end method
