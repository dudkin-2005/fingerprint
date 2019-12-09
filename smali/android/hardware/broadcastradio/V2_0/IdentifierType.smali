.class public final Landroid/hardware/broadcastradio/V2_0/IdentifierType;
.super Ljava/lang/Object;
.source "IdentifierType.java"


# static fields
.field public static final AMFM_FREQUENCY:I = 0x1

.field public static final DAB_ENSEMBLE:I = 0x6

.field public static final DAB_FREQUENCY:I = 0x8

.field public static final DAB_SCID:I = 0x7

.field public static final DAB_SID_EXT:I = 0x5

.field public static final DRMO_FREQUENCY:I = 0xa

.field public static final DRMO_SERVICE_ID:I = 0x9

.field public static final HD_STATION_ID_EXT:I = 0x3

.field public static final HD_STATION_NAME:I = 0x4

.field public static final INVALID:I = 0x0

.field public static final RDS_PI:I = 0x2

.field public static final SXM_CHANNEL:I = 0xd

.field public static final SXM_SERVICE_ID:I = 0xc

.field public static final VENDOR_END:I = 0x7cf

.field public static final VENDOR_START:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    nop

    .line 159
    and-int/lit16 v1, p0, 0x3e8

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 160
    const-string v1, "VENDOR_START"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_0

    .line 163
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0x7cf

    const/16 v3, 0x7cf

    if-ne v1, v3, :cond_1

    .line 164
    const-string v1, "VENDOR_END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit16 v2, v2, 0x7cf

    .line 167
    :cond_1
    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 169
    const-string v1, "AMFM_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v2, v2, 0x1

    .line 172
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 173
    const-string v1, "RDS_PI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v2, v2, 0x2

    .line 176
    :cond_3
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 177
    const-string v1, "HD_STATION_ID_EXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v2, v2, 0x3

    .line 180
    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 181
    const-string v1, "HD_STATION_NAME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v2, v2, 0x4

    .line 184
    :cond_5
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 185
    const-string v1, "DAB_SID_EXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v2, v2, 0x5

    .line 188
    :cond_6
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    .line 189
    const-string v1, "DAB_ENSEMBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v2, v2, 0x6

    .line 192
    :cond_7
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_8

    .line 193
    const-string v1, "DAB_SCID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v2, v2, 0x7

    .line 196
    :cond_8
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    .line 197
    const-string v1, "DAB_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v2, v2, 0x8

    .line 200
    :cond_9
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_a

    .line 201
    const-string v1, "DRMO_SERVICE_ID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v2, v2, 0x9

    .line 204
    :cond_a
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_b

    .line 205
    const-string v1, "DRMO_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v2, v2, 0xa

    .line 208
    :cond_b
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_c

    .line 209
    const-string v1, "SXM_SERVICE_ID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v2, v2, 0xc

    .line 212
    :cond_c
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_d

    .line 213
    const-string v1, "SXM_CHANNEL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v2, v2, 0xd

    .line 216
    :cond_d
    if-eq p0, v2, :cond_e

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_e
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 108
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 109
    const-string p0, "VENDOR_START"

    return-object p0

    .line 111
    :cond_0
    const/16 v0, 0x7cf

    if-ne p0, v0, :cond_1

    .line 112
    const-string p0, "VENDOR_END"

    return-object p0

    .line 114
    :cond_1
    if-nez p0, :cond_2

    .line 115
    const-string p0, "INVALID"

    return-object p0

    .line 117
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 118
    const-string p0, "AMFM_FREQUENCY"

    return-object p0

    .line 120
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 121
    const-string p0, "RDS_PI"

    return-object p0

    .line 123
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 124
    const-string p0, "HD_STATION_ID_EXT"

    return-object p0

    .line 126
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    .line 127
    const-string p0, "HD_STATION_NAME"

    return-object p0

    .line 129
    :cond_6
    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    .line 130
    const-string p0, "DAB_SID_EXT"

    return-object p0

    .line 132
    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    .line 133
    const-string p0, "DAB_ENSEMBLE"

    return-object p0

    .line 135
    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    .line 136
    const-string p0, "DAB_SCID"

    return-object p0

    .line 138
    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    .line 139
    const-string p0, "DAB_FREQUENCY"

    return-object p0

    .line 141
    :cond_a
    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    .line 142
    const-string p0, "DRMO_SERVICE_ID"

    return-object p0

    .line 144
    :cond_b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_c

    .line 145
    const-string p0, "DRMO_FREQUENCY"

    return-object p0

    .line 147
    :cond_c
    const/16 v0, 0xc

    if-ne p0, v0, :cond_d

    .line 148
    const-string p0, "SXM_SERVICE_ID"

    return-object p0

    .line 150
    :cond_d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    .line 151
    const-string p0, "SXM_CHANNEL"

    return-object p0

    .line 153
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
