.class Lcom/android/server/policy/OemGestureButton$7;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .line 1219
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$7;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$7;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$7;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1227
    goto :goto_2c

    .line 1224
    :catch_10
    move-exception v0

    .line 1225
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preloadWallapepr: failed mPreLoadWallpaperBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$7;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method
