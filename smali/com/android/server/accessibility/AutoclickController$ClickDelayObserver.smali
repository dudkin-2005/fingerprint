.class final Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClickDelayObserver"
.end annotation


# instance fields
.field private final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field private mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    .line 156
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 148
    const-string p2, "accessibility_autoclick_delay"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 157
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    .line 158
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 208
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_autoclick_delay"

    const/16 v0, 0x258

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 212
    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateDelay(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-nez v0, :cond_2

    .line 176
    if-eqz p1, :cond_1

    .line 179
    if-eqz p2, :cond_0

    .line 183
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 184
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 185
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    const/4 p1, 0x1

    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->onChange(ZLandroid/net/Uri;)V

    .line 190
    return-void

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "clickScheduler not set."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "contentResolver not set."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Observer already started."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClickDelayObserver not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
