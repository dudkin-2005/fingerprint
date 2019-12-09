.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_F_NESTED:I = 0x8000

.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 104
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 105
    return-void
.end method

.method public constructor <init>(SB)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 108
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 109
    const/4 p1, 0x1

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 110
    iget-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v0, 0x0

    aput-byte p2, p1, v0

    .line 111
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 126
    return-void
.end method

.method public constructor <init>(SILjava/nio/ByteOrder;)V
    .locals 0

    .line 129
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 130
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 131
    const/4 p1, 0x4

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 132
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    return-void
.end method

.method public constructor <init>(SLjava/net/InetAddress;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 136
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 137
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 138
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1

    .line 114
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    .line 115
    return-void
.end method

.method public constructor <init>(SSLjava/nio/ByteOrder;)V
    .locals 0

    .line 118
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 119
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 120
    const/4 p1, 0x2

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 121
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    return-void
.end method

.method public varargs constructor <init>(S[Landroid/net/netlink/StructNlAttr;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 142
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result p1

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 144
    nop

    .line 145
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-array p1, v2, [B

    invoke-direct {p0, p1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 148
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 149
    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 150
    invoke-virtual {v2, p1}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    return-void
.end method

.method public static makeNestedType(S)S
    .locals 1

    .line 41
    const v0, 0x8000

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5

    .line 75
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 81
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-short v2, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 84
    add-int/lit8 v2, v2, -0x4

    .line 85
    if-lez v2, :cond_1

    .line 86
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 87
    iget-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    :cond_1
    return-object v0

    .line 77
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 6

    .line 49
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 55
    new-instance v3, Landroid/net/netlink/StructNlAttr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    nop

    .line 66
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-short p0, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge p0, v2, :cond_1

    .line 69
    return-object v0

    .line 71
    :cond_1
    return-object v3

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    .line 50
    :cond_2
    :goto_0
    return-object v0
.end method

.method private setValue([B)V
    .locals 1

    .line 199
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 200
    iget-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 201
    return-void
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    .line 155
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 159
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 174
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    return-object v1
.end method

.method public getValueAsInt(I)I
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1

    .line 168
    :cond_1
    :goto_0
    return p1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 187
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    :try_start_0
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 191
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    nop

    .line 195
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlAttr{ nla_len{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_type{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_value{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 208
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    return-object v0
.end method
