.class public Lcom/oneplus/server/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# static fields
.field public static final FLAG_CMD_CONFIG:I = 0x2

.field public static final FLAG_LOCAL_CONFIG:I = 0x0

.field public static final FLAG_ONLINE_CONFIG:I = 0x1

.field public static final FLAG_TEST_MODE_CONFIG:I = 0x3

.field static final FUNC_CONFIG:I = 0x3

.field static final FUNC_DISABLE:I = 0x2

.field static final FUNC_ENABLE:I = 0x1

.field static final FUNC_NO_ACT:I = 0x0

.field public static final MAX_LEVEL:I = 0x64

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private differenceSwitch:[Ljava/lang/String;

.field private func:Lcom/oneplus/server/OPFunction;

.field private level:I

.field private mHashCode:I

.field private modes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private request:I

.field private rinfo:Ljava/lang/Object;

.field private sourceFlag:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;I)V
    .registers 7
    .param p2, "request"    # I
    .param p3, "func"    # Lcom/oneplus/server/OPFunction;
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;I",
            "Lcom/oneplus/server/OPFunction;",
            "I)V"
        }
    .end annotation

    .line 36
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/server/Rule;->level:I

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/server/Rule;->modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    .line 38
    iput p2, p0, Lcom/oneplus/server/Rule;->request:I

    .line 39
    iput-object p3, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 42
    iput p4, p0, Lcom/oneplus/server/Rule;->level:I

    .line 43
    iput-object v0, p0, Lcom/oneplus/server/Rule;->differenceSwitch:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;I[Ljava/lang/String;)V
    .registers 7
    .param p2, "request"    # I
    .param p3, "func"    # Lcom/oneplus/server/OPFunction;
    .param p4, "level"    # I
    .param p5, "differenceSwitch"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;I",
            "Lcom/oneplus/server/OPFunction;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/server/Rule;->level:I

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/server/Rule;->modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    .line 48
    iput p2, p0, Lcom/oneplus/server/Rule;->request:I

    .line 49
    iput-object p3, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 52
    iput p4, p0, Lcom/oneplus/server/Rule;->level:I

    .line 53
    iput-object p5, p0, Lcom/oneplus/server/Rule;->differenceSwitch:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation

    .line 57
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_41

    .line 60
    move v2, v1

    .line 61
    .local v2, "minIndex":I
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_c
    if-ge v3, v0, :cond_2c

    .line 62
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v5}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_29

    .line 63
    move v2, v3

    .line 61
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 66
    .end local v3    # "j":I
    :cond_2c
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    .line 67
    .local v3, "temp":Lcom/oneplus/server/SceneMode;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/SceneMode;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v3    # "temp":Lcom/oneplus/server/SceneMode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 71
    .end local v1    # "i":I
    .end local v2    # "minIndex":I
    :cond_41
    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/server/Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 155
    return v0

    .line 158
    :cond_4
    instance-of v1, p1, Lcom/oneplus/server/Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 160
    return v2

    .line 163
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/oneplus/server/Rule;

    .line 164
    .local v1, "r":Lcom/oneplus/server/Rule;
    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 165
    .local v3, "size":I
    iget-object v4, v1, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 166
    return v2

    .line 169
    :cond_1c
    move v4, v2

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_39

    .line 170
    iget-object v5, v1, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/server/SceneMode;

    iget-object v6, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v5, v6}, Lcom/oneplus/server/SceneMode;->equals(Lcom/oneplus/server/SceneMode;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 171
    return v2

    .line 169
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 175
    .end local v4    # "i":I
    :cond_39
    iget-object v4, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/OPFunction;->equals(Lcom/oneplus/server/OPFunction;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 176
    return v2

    .line 178
    :cond_46
    iget v4, p0, Lcom/oneplus/server/Rule;->request:I

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v5

    if-eq v4, v5, :cond_4f

    .line 179
    return v2

    .line 181
    :cond_4f
    iget v4, p0, Lcom/oneplus/server/Rule;->level:I

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v5

    if-eq v4, v5, :cond_58

    .line 182
    return v2

    .line 185
    :cond_58
    return v0
.end method

.method public getDifferenceSwitch()[Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/oneplus/server/Rule;->differenceSwitch:[Ljava/lang/String;

    return-object v0
.end method

.method public getFunc()Lcom/oneplus/server/OPFunction;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    return-object v0
.end method

.method public getModes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequest()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/oneplus/server/Rule;->request:I

    return v0
.end method

.method public getRinfo()Ljava/lang/Object;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getRuleLevel()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/oneplus/server/Rule;->level:I

    return v0
.end method

.method public getRulePrio()I
    .registers 5

    .line 75
    const/4 v0, 0x4

    .line 76
    .local v0, "hprio":I
    iget-object v1, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    .line 77
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v3

    invoke-static {v3, v0}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v3

    if-lez v3, :cond_21

    .line 78
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v0

    .line 79
    .end local v2    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_21
    goto :goto_7

    .line 81
    :cond_22
    return v0
.end method

.method public getSourceFlag()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 191
    iget v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 192
    .local v0, "result":I
    if-nez v0, :cond_2f

    .line 193
    iget v1, p0, Lcom/oneplus/server/Rule;->request:I

    mul-int/lit8 v1, v1, 0x2

    .line 194
    .end local v0    # "result":I
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 195
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 197
    .end local v0    # "i":I
    :cond_24
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v2}, Lcom/oneplus/server/OPFunction;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 198
    .end local v1    # "result":I
    .local v0, "result":I
    iput v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 201
    :cond_2f
    iget v1, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    return v1
.end method

.method public isRunnable()Z
    .registers 5

    .line 143
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 144
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 145
    return v0

    .line 143
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    .end local v1    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public setDifferenceSwitch([Ljava/lang/String;)V
    .registers 2
    .param p1, "_differenceSwitch"    # [Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/oneplus/server/Rule;->differenceSwitch:[Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setRinfo(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setRuleLevel(I)V
    .registers 2
    .param p1, "_level"    # I

    .line 113
    iput p1, p0, Lcom/oneplus/server/Rule;->level:I

    .line 114
    return-void
.end method

.method public setSourceFlag(I)V
    .registers 2
    .param p1, "flag"    # I

    .line 85
    iput p1, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v2}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/oneplus/server/Rule;->request:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    const-string v1, ", ENABLE, modes: "

    goto :goto_26

    :cond_24
    const-string v1, ", DISABLE, modes: "

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 134
    .end local v1    # "i":I
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sourceFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
