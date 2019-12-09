.class Lcom/android/server/power/Notifier$2;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    .line 456
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 459
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 460
    const-string v0, "PowerManagerNotifier"

    const-string/jumbo v1, "handleEarlyInteractiveChange: mPolicy.startedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp()V

    .line 464
    return-void
.end method
