.class Lcom/android/server/wm/onehand/OneHandedAnimator$1;
.super Landroid/os/Handler;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;-><init>(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Looper;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$1;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x577

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OneHandAnimator"

    const-string/jumbo v0, "set isOnehandTurnedOn false"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$1;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOnehandTurnedOn:Z

    .line 190
    :goto_0
    return-void
.end method
