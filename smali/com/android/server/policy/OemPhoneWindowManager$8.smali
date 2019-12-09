.class Lcom/android/server/policy/OemPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2208
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2211
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$900(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2212
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 2213
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/16 v1, 0xd

    const/4 v2, 0x0

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2400(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V

    .line 2215
    :cond_1e
    return-void
.end method
