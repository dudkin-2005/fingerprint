.class Lcom/android/server/wm/onehand/OneHandedAnimator$6;
.super Landroid/database/ContentObserver;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;->registerUserSetupCompleteObserver()V
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

    .line 555
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$6;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 558
    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$6;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1, p3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1400(Lcom/android/server/wm/onehand/OneHandedAnimator;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$6;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 561
    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabledSettingNotFound(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 562
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$6;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/onehand/OneHandedSettings;->setFeatureEnabled(Landroid/content/Context;ZI)V

    .line 564
    :cond_1
    return-void
.end method
