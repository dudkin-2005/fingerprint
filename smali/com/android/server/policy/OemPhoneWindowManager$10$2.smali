.class Lcom/android/server/policy/OemPhoneWindowManager$10$2;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

.field final synthetic val$availableApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$10;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/policy/OemPhoneWindowManager$10;

    .line 2976
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$2;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

    iput-object p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$2;->val$availableApps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2978
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2979
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$2;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$2;->val$availableApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V

    .line 2980
    return-void
.end method
