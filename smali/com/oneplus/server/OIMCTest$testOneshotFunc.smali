.class Lcom/oneplus/server/OIMCTest$testOneshotFunc;
.super Lcom/oneplus/server/OIMCTest$testFuncChange;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "testOneshotFunc"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method private constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCTest$testFuncChange;-><init>(Lcom/oneplus/server/OIMCTest;)V

    .line 393
    const-string p1, "TestOneshotFunc"

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->TAG:Ljava/lang/String;

    .line 394
    const-string p1, "TestOneshotFunc"

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p2, "x1"    # Lcom/oneplus/server/OIMCTest$1;

    .line 392
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;-><init>(Lcom/oneplus/server/OIMCTest;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 397
    const-string v0, "TestOneshotFunc"

    return-object v0
.end method
