.class Lcom/android/server/policy/PhoneWindowManager$23;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$dockedStackBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedVisibility:I

.field final synthetic val$fullscreenStackBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenVisibility:I

.field final synthetic val$needsMenu:Z

.field final synthetic val$vis:I

.field final synthetic val$win:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 9772
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$vis:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$fullscreenVisibility:I

    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$dockedVisibility:I

    iput-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$dockedStackBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-boolean p8, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 9775
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 9776
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_22

    .line 9781
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$vis:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$fullscreenVisibility:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$dockedVisibility:I

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$dockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$win:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9784
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9781
    move-object v1, v0

    invoke-interface/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 9785
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(Z)V

    .line 9787
    :cond_22
    return-void
.end method
