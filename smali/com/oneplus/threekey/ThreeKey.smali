.class public Lcom/oneplus/threekey/ThreeKey;
.super Lcom/oneplus/threekey/ThreeKeyBase;
.source "ThreeKey.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ThreeKey"


# instance fields
.field private mPolicys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/three_key/IThreeKeyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .registers 5
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 54
    const-string v0, "ThreeKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addThreeKeyPolicy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez p1, :cond_19

    .line 57
    return-void

    .line 59
    :cond_19
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public init(I)V
    .registers 5
    .param p1, "switchState"    # I

    .line 68
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 70
    .local v1, "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    const/4 v2, 0x1

    :try_start_13
    invoke-interface {v1, v2}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 72
    goto :goto_18

    .line 71
    :catch_17
    move-exception v2

    .line 73
    .end local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :goto_18
    goto :goto_6

    .line 75
    :cond_19
    invoke-super {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;->init(I)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 79
    .restart local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    const/4 v2, 0x0

    :try_start_2f
    invoke-interface {v1, v2}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 81
    goto :goto_34

    .line 80
    :catch_33
    move-exception v2

    .line 82
    .end local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :goto_34
    goto :goto_22

    .line 84
    :cond_35
    return-void
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .registers 3
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 63
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method protected setDown()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 46
    .local v1, "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :try_start_12
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setDown()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 48
    goto :goto_17

    .line 47
    :catch_16
    move-exception v2

    .line 49
    .end local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :goto_17
    goto :goto_6

    .line 50
    :cond_18
    return-void
.end method

.method protected setMiddle()V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 36
    .local v1, "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :try_start_12
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setMiddle()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 38
    goto :goto_17

    .line 37
    :catch_16
    move-exception v2

    .line 39
    .end local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :goto_17
    goto :goto_6

    .line 40
    :cond_18
    return-void
.end method

.method protected setUp()V
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 25
    .local v1, "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :try_start_12
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setUp()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 27
    goto :goto_17

    .line 26
    :catch_16
    move-exception v2

    .line 29
    .end local v1    # "policy":Lcom/oneplus/three_key/IThreeKeyPolicy;
    :goto_17
    goto :goto_6

    .line 30
    :cond_18
    return-void
.end method
