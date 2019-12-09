.class final Lcom/android/server/wm/ScreenRotationAnimation$H;
.super Landroid/os/Handler;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final FREEZE_TIMEOUT_VAL:I = 0x1770

.field public static final SCREENSHOT_FREEZE_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;Landroid/os/Looper;)V
    .locals 1

    .line 1051
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1052
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1053
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1057
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1071
    const-string p1, "WindowManager"

    const-string v0, "No Valid Message To Handle"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object p1, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1060
    const-string p1, "WindowManager"

    const-string v0, "Exceeded Freeze timeout. Destroy layers"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    goto :goto_0

    .line 1062
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object p1, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2

    .line 1063
    const-string p1, "WindowManager"

    const-string v0, "No animation, exceeded freeze timeout. Destroy Screenshot layer"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object p1, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->destroy()V

    .line 1066
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1074
    :cond_2
    :goto_0
    return-void
.end method
