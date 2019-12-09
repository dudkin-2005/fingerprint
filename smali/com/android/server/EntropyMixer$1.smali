.class Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 79
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 80
    const-string p1, "EntropyMixer"

    const-string v0, "Will not process invalid message"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p1}, Lcom/android/server/EntropyMixer;->access$000(Lcom/android/server/EntropyMixer;)V

    .line 84
    iget-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p1}, Lcom/android/server/EntropyMixer;->access$100(Lcom/android/server/EntropyMixer;)V

    .line 85
    iget-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p1}, Lcom/android/server/EntropyMixer;->access$200(Lcom/android/server/EntropyMixer;)V

    .line 86
    return-void
.end method
