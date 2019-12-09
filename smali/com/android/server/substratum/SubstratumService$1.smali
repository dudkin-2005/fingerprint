.class Lcom/android/server/substratum/SubstratumService$1;
.super Ljava/lang/Object;
.source "SubstratumService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/substratum/SubstratumService;


# direct methods
.method constructor <init>(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$1;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$1;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p2}, Lcom/android/internal/substratum/ISubstratumHelperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/substratum/ISubstratumHelperService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$002(Lcom/android/server/substratum/SubstratumService;Lcom/android/internal/substratum/ISubstratumHelperService;)Lcom/android/internal/substratum/ISubstratumHelperService;

    .line 167
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$1;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string p2, "Helper service connected"

    invoke-static {p1, p2}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$1;->this$0:Lcom/android/server/substratum/SubstratumService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/substratum/SubstratumService;->access$002(Lcom/android/server/substratum/SubstratumService;Lcom/android/internal/substratum/ISubstratumHelperService;)Lcom/android/internal/substratum/ISubstratumHelperService;

    .line 173
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$1;->this$0:Lcom/android/server/substratum/SubstratumService;

    const-string v0, "Helper service disconnected"

    invoke-static {p1, v0}, Lcom/android/server/substratum/SubstratumService;->access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V

    .line 174
    return-void
.end method
