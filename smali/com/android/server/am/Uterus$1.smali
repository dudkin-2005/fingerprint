.class Lcom/android/server/am/Uterus$1;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Uterus;->scheduleBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .line 380
    iput-object p1, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    # invokes: Lcom/android/server/am/Uterus;->flushToStorage()V
    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$300(Lcom/android/server/am/Uterus;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    # invokes: Lcom/android/server/am/Uterus;->updateLocalBlacklistToStorage()V
    invoke-static {v0}, Lcom/android/server/am/Uterus;->access$400(Lcom/android/server/am/Uterus;)V

    .line 386
    return-void
.end method
