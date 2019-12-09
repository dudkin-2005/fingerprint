.class Lcom/android/server/ESportMode$1;
.super Landroid/app/UserSwitchObserver;
.source "ESportMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ESportMode;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportMode;


# direct methods
.method constructor <init>(Lcom/android/server/ESportMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ESportMode;

    .line 99
    iput-object p1, p0, Lcom/android/server/ESportMode$1;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/server/ESportMode$1;->this$0:Lcom/android/server/ESportMode;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/ESportMode;->mEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$002(Lcom/android/server/ESportMode;Z)Z

    .line 104
    iget-object v0, p0, Lcom/android/server/ESportMode$1;->this$0:Lcom/android/server/ESportMode;

    # invokes: Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$100(Lcom/android/server/ESportMode;Z)V

    .line 105
    return-void
.end method
