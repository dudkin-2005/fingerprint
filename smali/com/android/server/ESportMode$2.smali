.class Lcom/android/server/ESportMode$2;
.super Ljava/lang/Object;
.source "ESportMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportMode;
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

    .line 342
    iput-object p1, p0, Lcom/android/server/ESportMode$2;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 345
    const-string v0, "ESportMode"

    const-string v1, "Try to recover phone crash caused telephony esport invoking error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/server/ESportMode$2;->this$0:Lcom/android/server/ESportMode;

    iget-object v1, p0, Lcom/android/server/ESportMode$2;->this$0:Lcom/android/server/ESportMode;

    # getter for: Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z
    invoke-static {v1}, Lcom/android/server/ESportMode;->access$500(Lcom/android/server/ESportMode;)Z

    move-result v1

    # invokes: Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$600(Lcom/android/server/ESportMode;Z)V

    .line 347
    return-void
.end method
