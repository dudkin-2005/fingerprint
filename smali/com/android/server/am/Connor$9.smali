.class Lcom/android/server/am/Connor$9;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Connor;->applyNNModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 544
    iput-object p1, p0, Lcom/android/server/am/Connor$9;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 546
    const-string v0, ".caffemodel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "_acc_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
