.class Lcom/oneplus/server/OIMCTest$1;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 108
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$1;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$1;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/FunctionManager;

    .line 112
    .local v0, "fm":Lcom/oneplus/server/FunctionManager;
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$1;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 113
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$1;->setResult(I)V

    .line 115
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1a
    array-length v4, v1

    if-ge v3, v4, :cond_2c

    .line 116
    aget-object v4, v1, v3

    .line 117
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v5

    if-nez v5, :cond_29

    .line 118
    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$1;->setResult(I)V

    .line 119
    goto :goto_2c

    .line 115
    .end local v4    # "name":Ljava/lang/String;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 122
    .end local v3    # "i":I
    :cond_2c
    :goto_2c
    return-void
.end method