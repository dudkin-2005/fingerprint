.class Lcom/android/server/smartpixels/SmartPixelsService$1;
.super Ljava/lang/Object;
.source "SmartPixelsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartpixels/SmartPixelsService;->startFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartpixels/SmartPixelsService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$handlerStartCounter:I

.field final synthetic val$pm:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/android/server/smartpixels/SmartPixelsService;ILandroid/os/PowerManager;Landroid/os/Handler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    iput p2, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$handlerStartCounter:I

    iput-object p3, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$pm:Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsService;->access$000(Lcom/android/server/smartpixels/SmartPixelsService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsService;->access$100(Lcom/android/server/smartpixels/SmartPixelsService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$handlerStartCounter:I

    iget-object v1, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v1}, Lcom/android/server/smartpixels/SmartPixelsService;->access$200(Lcom/android/server/smartpixels/SmartPixelsService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$pm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsService;->access$300(Lcom/android/server/smartpixels/SmartPixelsService;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsService;->access$000(Lcom/android/server/smartpixels/SmartPixelsService;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v0}, Lcom/android/server/smartpixels/SmartPixelsService;->access$100(Lcom/android/server/smartpixels/SmartPixelsService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->val$handler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/smartpixels/Grids;->ShiftTimeouts:[I

    iget-object v2, p0, Lcom/android/server/smartpixels/SmartPixelsService$1;->this$0:Lcom/android/server/smartpixels/SmartPixelsService;

    invoke-static {v2}, Lcom/android/server/smartpixels/SmartPixelsService;->access$400(Lcom/android/server/smartpixels/SmartPixelsService;)I

    move-result v2

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_2
    return-void

    .line 134
    :cond_3
    :goto_0
    return-void
.end method
