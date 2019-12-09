.class Lcom/android/server/custom/display/LiveDisplayService$3;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/LiveDisplayService;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$3;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 307
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 315
    if-nez p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$3;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p1}, Lcom/android/server/custom/display/LiveDisplayService;->access$800(Lcom/android/server/custom/display/LiveDisplayService;)Z

    move-result p1

    .line 317
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$3;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$100(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/LiveDisplayService$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mScreenOn:Z

    if-eq p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$3;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$100(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/LiveDisplayService$State;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/server/custom/display/LiveDisplayService$State;->mScreenOn:Z

    .line 319
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$3;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    sget v0, Lcom/android/server/custom/display/LiveDisplayService;->DISPLAY_CHANGED:I

    invoke-static {p1, v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$900(Lcom/android/server/custom/display/LiveDisplayService;I)V

    .line 322
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 311
    return-void
.end method
