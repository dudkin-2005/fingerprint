.class Lcom/android/server/am/Connor$2;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
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

    .line 135
    iput-object p1, p0, Lcom/android/server/am/Connor$2;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/am/Connor$2;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 139
    iget-object v0, p0, Lcom/android/server/am/Connor$2;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    iget-object v0, p0, Lcom/android/server/am/Connor$2;->this$0:Lcom/android/server/am/Connor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, v1}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    :cond_17
    return-void
.end method
