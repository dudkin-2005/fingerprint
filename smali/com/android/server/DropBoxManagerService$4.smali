.class Lcom/android/server/DropBoxManagerService$4;
.super Landroid/database/ContentObserver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p1}, Lcom/android/server/DropBoxManagerService;->access$300(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    return-void
.end method
