.class Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 351
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 367
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onThemeSettingsChanged()V

    .line 368
    return-void
.end method

.method public startObserving(Landroid/content/Context;)V
    .locals 2

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "system_theme_style"

    .line 356
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 359
    return-void
.end method

.method public stopObserving(Landroid/content/Context;)V
    .locals 0

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 363
    return-void
.end method
