.class public final Lcom/android/server/usb/descriptors/UsbConfigDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbConfigDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbConfigDescriptor"


# instance fields
.field private mAttribs:I

.field private mConfigIndex:B

.field private mConfigValue:I

.field private mInterfaceDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPower:I

.field private mNumInterfaces:B

.field private mTotalLength:I


# direct methods
.method constructor <init>(IB)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 50
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mHierarchyLevel:I

    .line 51
    return-void
.end method


# virtual methods
.method addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getAttribs()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    return v0
.end method

.method public getConfigIndex()B
    .locals 1

    .line 66
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    return v0
.end method

.method public getConfigValue()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    return v0
.end method

.method public getMaxPower()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    return v0
.end method

.method public getNumInterfaces()B
    .locals 1

    .line 58
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    return v0
.end method

.method public getTotalLength()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mTotalLength:I

    .line 102
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mNumInterfaces:B

    .line 103
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    .line 104
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    .line 105
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    .line 106
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    .line 108
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mLength:I

    return p1
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 115
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getConfigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getNumInterfaces()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Interfaces."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getAttribs()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 120
    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;
    .locals 5

    .line 85
    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/hardware/usb/UsbConfiguration;

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 88
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    .line 92
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v3, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    aput-object v3, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 96
    return-object v1
.end method
