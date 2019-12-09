.class Lcom/android/server/policy/OemGestureButton$6;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .line 1171
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object p2, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1177
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_1e

    .line 1178
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    .line 1181
    :cond_1e
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    .line 1182
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$6;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1183
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton;->setIgnoreNotchWallpaper()V

    .line 1185
    :cond_2d
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4c

    .line 1186
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preloadWallapepr: mPreLoadWallpaperBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 1192
    :cond_4c
    goto :goto_69

    .line 1189
    :catch_4d
    move-exception v0

    .line 1190
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preloadWallapepr: failed mPreLoadWallpaperBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$6;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method
