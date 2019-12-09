.class final Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 109
    const-string/jumbo p1, "soc:tri_state_key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 110
    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 111
    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 112
    const/4 p1, 0x4

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 113
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevIndex()V

    goto :goto_2b

    .line 115
    :cond_1d
    const-string/jumbo p1, "tri-state-key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 117
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 118
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 119
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 121
    :goto_2b
    return-void
.end method

.method private getDevIndex()V
    .registers 11

    .line 124
    const/16 v0, 0x400

    new-array v1, v0, [C

    .line 126
    .local v1, "buffer":[C
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_6d

    .line 127
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "/sys/class/extcon/extcon%d/name"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 127
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "devPath":Ljava/lang/String;
    move v5, v2

    .line 132
    .local v5, "len":I
    :try_start_1b
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, "file":Ljava/io/FileReader;
    invoke-virtual {v6, v1, v2, v0}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    move v5, v7

    .line 134
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_28} :catch_32
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    .end local v6    # "file":Ljava/io/FileReader;
    goto :goto_3a

    .line 137
    :catch_29
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ThreeKeyHw"

    const-string v8, ""

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_3b

    .line 135
    :catch_32
    move-exception v6

    .line 136
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ThreeKeyHw"

    const-string v8, ""

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_3a
    nop

    .line 141
    :goto_3b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "devName":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 143
    iput v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 144
    goto :goto_6d

    .line 146
    :cond_4f
    const-string v7, "ThreeKeyHw"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/class/extcon/extcon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/name != soc:tri_state_key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v4    # "devPath":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "devName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 149
    .end local v3    # "i":I
    :cond_6d
    :goto_6d
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .registers 3

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 155
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/platform/soc/%s/extcon/extcon%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 155
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/virtual/switch/%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 167
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/extcon/extcon%d/"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 167
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/switch/%s/state"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
