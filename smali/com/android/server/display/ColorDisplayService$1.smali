.class Lcom/android/server/display/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/ColorDisplayService;->access$100(Lcom/android/server/display/ColorDisplayService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/ColorDisplayService;->access$200(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/display/ColorDisplayService;->access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 186
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$400(Lcom/android/server/display/ColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$500(Lcom/android/server/display/ColorDisplayService;)V

    .line 190
    :cond_0
    return-void
.end method
