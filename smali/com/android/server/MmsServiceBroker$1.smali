.class Lcom/android/server/MmsServiceBroker$1;
.super Landroid/os/Handler;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 86
    const-string p1, "MmsServiceBroker"

    const-string v0, "Unknown message"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p1}, Lcom/android/server/MmsServiceBroker;->access$000(Lcom/android/server/MmsServiceBroker;)V

    .line 84
    nop

    .line 88
    :goto_0
    return-void
.end method
