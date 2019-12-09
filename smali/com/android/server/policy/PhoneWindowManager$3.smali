.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Landroid/pocket/IPocketCallback$Stub;
.source "PhoneWindowManager.java"


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
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    .line 898
    if-nez p2, :cond_0

    .line 899
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->access$002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->access$002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 903
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 904
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 909
    :cond_1
    return-void
.end method
