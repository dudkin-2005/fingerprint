.class Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;
.super Landroid/os/Handler;
.source "OnePlusIdleWhiltelistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnePlusIdleWhiltelistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 81
    iput-object p1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1d

    .line 89
    :cond_6
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    # getter for: Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$200(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "UidIdle"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusIdleWhiltelistManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V

    .line 91
    nop

    .line 95
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :goto_1d
    return-void
.end method
