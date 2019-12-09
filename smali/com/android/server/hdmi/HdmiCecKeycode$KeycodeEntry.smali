.class Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecKeycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeycodeEntry"
.end annotation


# instance fields
.field private final mAndroidKeycode:I

.field private final mCecKeycodeAndParams:[B

.field private final mIsRepeatable:Z


# direct methods
.method private constructor <init>(II)V
    .locals 2

    .line 204
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    .line 205
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 1

    .line 196
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    .line 197
    return-void
.end method

.method synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ[B)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 189
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    .line 190
    array-length p1, p4

    const/4 p3, 0x1

    add-int/2addr p1, p3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    .line 191
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    array-length v0, p4

    const/4 v1, 0x0

    invoke-static {p4, v1, p1, p3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    .line 193
    return-void
.end method

.method synthetic constructor <init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 1

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    .line 201
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeAndParamIfMatched(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    .line 225
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private toAndroidKeycodeIfMatched([B)I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    return p1

    .line 219
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private toCecKeycodeAndParamIfMatched(I)[B
    .locals 1

    .line 208
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    return-object p1

    .line 211
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
