.class Lcom/android/server/policy/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final MSG_KEY_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .registers 2

    .line 651
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/DeviceKeyHandler$1;

    .line 651
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 656
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    .line 658
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # invokes: Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$700(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 659
    nop

    .line 663
    :goto_c
    return-void
.end method
