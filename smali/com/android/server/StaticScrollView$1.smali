.class Lcom/android/server/StaticScrollView$1;
.super Ljava/lang/Object;
.source "StaticScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StaticScrollView;->init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StaticScrollView;


# direct methods
.method constructor <init>(Lcom/android/server/StaticScrollView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StaticScrollView;

    .line 73
    iput-object p1, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 76
    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->isSettingsShow:Z
    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$000(Lcom/android/server/StaticScrollView;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 77
    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 78
    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 80
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_27
    const/4 v0, 0x1

    return v0
.end method
