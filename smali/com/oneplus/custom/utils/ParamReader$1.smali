.class Lcom/oneplus/custom/utils/ParamReader$1;
.super Ljava/lang/Object;
.source "ParamReader.java"

# interfaces
.implements Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/custom/utils/ParamReader;->getSecureWPKey()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/oneplus/custom/utils/ParamReader$1;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/util/ArrayList;)V
    .registers 4
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p2, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    # setter for: Lcom/oneplus/custom/utils/ParamReader;->mParamReadRet:Z
    invoke-static {p1}, Lcom/oneplus/custom/utils/ParamReader;->access$002(Z)Z

    .line 165
    # setter for: Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/oneplus/custom/utils/ParamReader;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 166
    iget-object v0, p0, Lcom/oneplus/custom/utils/ParamReader$1;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 167
    return-void
.end method
