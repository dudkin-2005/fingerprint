.class public Lcom/oneplus/custom/utils/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field protected static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.assert.panic"

    invoke-static {v1}, Lcom/oneplus/custom/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_7
    return-void
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_7

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_7
    return-void
.end method

.method protected static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 20
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_7

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_7
    return-void
.end method

.method protected static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 12
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_7

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_7
    return-void
.end method

.method protected static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_7

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_7
    return-void
.end method
