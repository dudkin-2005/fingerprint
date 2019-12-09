.class final Lcom/android/server/am/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/am/CompatModePackages;

    .line 70
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/am/CompatModePackages;

    invoke-virtual {p1}, Lcom/android/server/am/CompatModePackages;->saveCompatModes()V

    .line 80
    :goto_0
    return-void
.end method
