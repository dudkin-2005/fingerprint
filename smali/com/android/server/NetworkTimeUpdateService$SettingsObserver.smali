.class Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 298
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 299
    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    .line 300
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 2

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 304
    const-string v0, "auto_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void
.end method
