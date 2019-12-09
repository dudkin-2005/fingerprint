.class Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeToScreenshotObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 27641
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27642
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27643
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    .line 27644
    return-void
.end method

.method private update()V
    .locals 5

    .line 27654
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_finger_gesture"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerService;->access$1902(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 27656
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 27659
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->update()V

    .line 27660
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .line 27647
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_finger_gesture"

    .line 27648
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 27647
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 27650
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->update()V

    .line 27651
    return-void
.end method
