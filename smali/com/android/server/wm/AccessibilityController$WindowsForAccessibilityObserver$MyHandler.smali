.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_COMPUTE_CHANGED_WINDOWS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V
    .locals 1

    .line 1338
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 1339
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1345
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1347
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1350
    :goto_0
    return-void
.end method