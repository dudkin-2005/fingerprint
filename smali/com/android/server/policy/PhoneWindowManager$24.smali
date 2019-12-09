.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/oneplus/scene/OimcBrickModeObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 10780
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .registers 6
    .param p1, "isOn"    # Z

    .line 10783
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 10784
    const-string v1, "WindowManager"

    const-string v2, "Force to show navigation bar when brick mode is on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10785
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBar(Z)V
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_46

    .line 10787
    :cond_10
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "systemui_navigation_bar_hided"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    move v0, v2

    nop

    .line 10789
    .local v0, "hideNaviBar":Z
    :cond_24
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_30

    const-string v3, "Hide"

    goto :goto_32

    :cond_30
    const-string v3, "Show"

    :goto_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " navigation bar when brick mode is off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10790
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBar(Z)V
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 10792
    .end local v0    # "hideNaviBar":Z
    :goto_46
    return-void
.end method
