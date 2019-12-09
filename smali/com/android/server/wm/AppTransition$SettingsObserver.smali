.class Lcom/android/server/wm/AppTransition$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V
    .locals 0

    .line 2327
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    .line 2328
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2329
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 2331
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->access$300(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2332
    const-string v1, "animation_controls_duration"

    .line 2333
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2332
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2334
    move v1, v2

    :goto_0
    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    .line 2335
    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 2336
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2335
    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2338
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 2341
    iget-object p1, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->access$400(Lcom/android/server/wm/AppTransition;)V

    .line 2342
    return-void
.end method
