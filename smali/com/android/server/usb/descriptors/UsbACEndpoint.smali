.class abstract Lcom/android/server/usb/descriptors/UsbACEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACEndpoint"


# instance fields
.field protected final mSubclass:I

.field protected mSubtype:B


# direct methods
.method constructor <init>(IBI)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 34
    iput p3, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    .line 35
    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result p0

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 67
    const-string p1, "UsbACEndpoint"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Audio Class Endpoint id:0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 64
    :pswitch_0
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;-><init>(IBI)V

    return-object v0

    .line 61
    :pswitch_1
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;-><init>(IBI)V

    return-object v0

    .line 58
    :pswitch_2
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;-><init>(IBI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSubclass()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return v0
.end method

.method public getSubtype()B
    .locals 1

    .line 42
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 0

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    .line 49
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mLength:I

    return p1
.end method
