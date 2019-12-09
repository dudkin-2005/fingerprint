.class Lcom/android/server/custom/display/LiveDisplayService$1;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/custom/display/LiveDisplayService;->updateFeatures(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/LiveDisplayService;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/LiveDisplayService;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    iput p2, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 199
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/custom/display/LiveDisplayService;->access$000(Lcom/android/server/custom/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/custom/display/LiveDisplayService;->access$000(Lcom/android/server/custom/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/custom/display/LiveDisplayFeature;

    iget v2, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->val$flags:I

    iget-object v3, p0, Lcom/android/server/custom/display/LiveDisplayService$1;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v3}, Lcom/android/server/custom/display/LiveDisplayService;->access$100(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/LiveDisplayService$State;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/custom/display/LiveDisplayFeature;->update(ILcom/android/server/custom/display/LiveDisplayService$State;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method
