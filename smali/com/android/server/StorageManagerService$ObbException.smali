.class Lcom/android/server/StorageManagerService$ObbException;
.super Ljava/lang/Exception;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObbException"
.end annotation


# instance fields
.field public final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 3275
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3276
    iput p1, p0, Lcom/android/server/StorageManagerService$ObbException;->status:I

    .line 3277
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 3280
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3281
    iput p1, p0, Lcom/android/server/StorageManagerService$ObbException;->status:I

    .line 3282
    return-void
.end method
