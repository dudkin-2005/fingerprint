.class Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 2

    .line 1957
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$1;

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1960
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1964
    return-void
.end method
