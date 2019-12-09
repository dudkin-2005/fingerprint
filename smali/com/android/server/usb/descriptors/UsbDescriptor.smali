.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "UsbDescriptor.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/report/Reporting;


# static fields
.field public static final AUDIO_AUDIOCONTROL:I = 0x1

.field public static final AUDIO_AUDIOSTREAMING:I = 0x2

.field public static final AUDIO_MIDISTREAMING:I = 0x3

.field public static final AUDIO_SUBCLASS_UNDEFINED:I = 0x0

.field public static final CLASSID_APPSPECIFIC:I = 0xfe

.field public static final CLASSID_AUDIO:I = 0x1

.field public static final CLASSID_AUDIOVIDEO:I = 0x10

.field public static final CLASSID_BILLBOARD:I = 0x11

.field public static final CLASSID_CDC_CONTROL:I = 0xa

.field public static final CLASSID_COM:I = 0x2

.field public static final CLASSID_DEVICE:I = 0x0

.field public static final CLASSID_DIAGNOSTIC:I = 0xdc

.field public static final CLASSID_HEALTHCARE:I = 0xf

.field public static final CLASSID_HID:I = 0x3

.field public static final CLASSID_HUB:I = 0x9

.field public static final CLASSID_IMAGE:I = 0x6

.field public static final CLASSID_MISC:I = 0xef

.field public static final CLASSID_PHYSICAL:I = 0x5

.field public static final CLASSID_PRINTER:I = 0x7

.field public static final CLASSID_SECURITY:I = 0xd

.field public static final CLASSID_SMART_CARD:I = 0xb

.field public static final CLASSID_STORAGE:I = 0x8

.field public static final CLASSID_TYPECBRIDGE:I = 0x12

.field public static final CLASSID_VENDSPECIFIC:I = 0xff

.field public static final CLASSID_VIDEO:I = 0xe

.field public static final CLASSID_WIRELESS:I = 0xe0

.field public static final DESCRIPTORTYPE_AUDIO_ENDPOINT:B = 0x25t

.field public static final DESCRIPTORTYPE_AUDIO_INTERFACE:B = 0x24t

.field public static final DESCRIPTORTYPE_BOS:B = 0xft

.field public static final DESCRIPTORTYPE_CAPABILITY:B = 0x10t

.field public static final DESCRIPTORTYPE_CONFIG:B = 0x2t

.field public static final DESCRIPTORTYPE_DEVICE:B = 0x1t

.field public static final DESCRIPTORTYPE_ENDPOINT:B = 0x5t

.field public static final DESCRIPTORTYPE_ENDPOINT_COMPANION:B = 0x30t

.field public static final DESCRIPTORTYPE_HID:B = 0x21t

.field public static final DESCRIPTORTYPE_HUB:B = 0x29t

.field public static final DESCRIPTORTYPE_INTERFACE:B = 0x4t

.field public static final DESCRIPTORTYPE_INTERFACEASSOC:B = 0xbt

.field public static final DESCRIPTORTYPE_PHYSICAL:B = 0x23t

.field public static final DESCRIPTORTYPE_REPORT:B = 0x22t

.field public static final DESCRIPTORTYPE_STRING:B = 0x3t

.field public static final DESCRIPTORTYPE_SUPERSPEED_HUB:B = 0x2at

.field public static final REQUEST_CLEAR_FEATURE:I = 0x1

.field public static final REQUEST_GET_ADDRESS:I = 0x5

.field public static final REQUEST_GET_CONFIGURATION:I = 0x8

.field public static final REQUEST_GET_DESCRIPTOR:I = 0x6

.field public static final REQUEST_GET_STATUS:I = 0x0

.field public static final REQUEST_SET_CONFIGURATION:I = 0x9

.field public static final REQUEST_SET_DESCRIPTOR:I = 0x7

.field public static final REQUEST_SET_FEATURE:I = 0x3

.field private static final SIZE_STRINGBUFFER:I = 0x100

.field public static final STATUS_PARSED_OK:I = 0x1

.field public static final STATUS_PARSED_OVERRUN:I = 0x3

.field public static final STATUS_PARSED_UNDERRUN:I = 0x2

.field public static final STATUS_PARSE_EXCEPTION:I = 0x4

.field public static final STATUS_UNPARSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbDescriptor"

.field private static sStatusStrings:[Ljava/lang/String;

.field private static sStringBuffer:[B


# instance fields
.field protected mHierarchyLevel:I

.field protected final mLength:I

.field private mOverUnderRunCount:I

.field private mRawData:[B

.field private mStatus:I

.field protected final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    .line 63
    const-string v0, "UNPARSED"

    const-string v1, "PARSED - OK"

    const-string v2, "PARSED - UNDERRUN"

    const-string v3, "PARSED - OVERRUN"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IB)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 135
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 140
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 141
    iput-byte p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 142
    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;
    .locals 9

    .line 217
    const-string v0, ""

    .line 218
    if-eqz p1, :cond_1

    .line 220
    const/16 v2, 0x80

    const/4 v3, 0x6

    const/16 v1, 0x300

    or-int v4, v1, p1

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/16 v7, 0xff

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    .line 228
    if-ltz p0, :cond_0

    .line 229
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/4 v2, 0x2

    sub-int/2addr p0, v2

    const-string v3, "UTF-16LE"

    invoke-direct {p1, v1, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 235
    move-object v0, p1

    goto :goto_0

    .line 231
    :cond_0
    const-string p0, "?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    move-object v0, p0

    :goto_0
    goto :goto_1

    .line 233
    :catch_0
    move-exception p0

    .line 234
    const-string p1, "UsbDescriptor"

    const-string v1, "Can not communicate with USB device"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_1
    :goto_1
    return-object v0
.end method

.method private reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    .line 242
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    goto :goto_0

    .line 249
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getOverUnderRunCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 249
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 253
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v0
.end method

.method public getOverUnderRunCount()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 2

    .line 165
    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 149
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 4

    .line 202
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 203
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    .line 204
    if-lez v1, :cond_0

    .line 205
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    .line 206
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p1
.end method

.method public postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .locals 3

    .line 177
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    .line 178
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-ge v0, v1, :cond_0

    .line 180
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 181
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 182
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 183
    const-string p1, "UsbDescriptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDERRUN t:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < l: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_0
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-le v0, v1, :cond_1

    .line 187
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->reverse(I)V

    .line 188
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 189
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int p1, v0, p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 190
    const-string p1, "UsbDescriptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OVERRRUN t:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > l: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 196
    :goto_0
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Len: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    if-eqz v1, :cond_0

    .line 261
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 269
    :cond_1
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 158
    return-void
.end method

.method public shortReport(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Len: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 277
    return-void
.end method