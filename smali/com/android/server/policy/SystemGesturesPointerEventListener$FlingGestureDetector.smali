.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 260
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, p3

    float-to-int v6, p4

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 268
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    .line 269
    const/16 v2, 0x1388

    if-le v0, v2, :cond_1

    .line 270
    nop

    .line 272
    move v0, v2

    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_2

    .line 273
    iget-object p3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onVerticalFling(I)V

    .line 274
    :cond_2
    iget-object p3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p3, p1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    .line 275
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    .line 276
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$400(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 284
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$402(Lcom/android/server/policy/SystemGesturesPointerEventListener;Z)Z

    .line 286
    :cond_0
    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 255
    :cond_0
    return v0
.end method
