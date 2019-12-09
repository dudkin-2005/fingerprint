.class Lcom/android/server/display/OverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 320
    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p2}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 321
    invoke-static {p2}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 322
    invoke-static {p2}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object p2

    iget-wide v3, p2, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-object p2, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p2}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object p2

    iget v5, p2, Landroid/view/DisplayInfo;->state:I

    .line 320
    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V

    .line 323
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 327
    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowDestroyed()V

    .line 328
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 334
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 338
    return-void
.end method
