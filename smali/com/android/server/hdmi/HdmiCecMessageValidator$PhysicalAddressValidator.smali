.class Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    .line 299
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 300
    const/4 p1, 0x4

    return p1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$500(Z)I

    move-result p1

    return p1
.end method
