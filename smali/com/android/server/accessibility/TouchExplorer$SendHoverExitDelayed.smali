.class Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 1210
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    const-string v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .registers 2

    .line 1237
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1241
    return-void
.end method

.method private isPending()Z
    .registers 2

    .line 1233
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1226
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1227
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1228
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1230
    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .line 1244
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1248
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "pointerIdBits"    # I
    .param p3, "policyFlags"    # I

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1219
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1220
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1221
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1222
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1223
    return-void
.end method

.method public run()V
    .registers 6

    .line 1255
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    const/16 v4, 0xa

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1257
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1258
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1259
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1261
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1262
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1263
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1265
    :cond_49
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1266
    return-void
.end method
