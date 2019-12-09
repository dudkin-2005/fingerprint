.class public abstract Landroid/os/IVoldTaskListener$Stub;
.super Landroid/os/Binder;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IVoldTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldTaskListener"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_onStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVoldTaskListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoldTaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;
    .locals 2

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    const-string v0, "android.os.IVoldTaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVoldTaskListener;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVoldTaskListener;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVoldTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVoldTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "android.os.IVoldTaskListener"

    .line 40
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 69
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/PersistableBundle;

    goto :goto_0

    .line 72
    :cond_0
    nop

    .line 74
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/os/IVoldTaskListener$Stub;->onFinished(ILandroid/os/PersistableBundle;)V

    .line 75
    return v2

    .line 49
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    .line 54
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/PersistableBundle;

    goto :goto_1

    .line 57
    :cond_1
    nop

    .line 59
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/os/IVoldTaskListener$Stub;->onStatus(ILandroid/os/PersistableBundle;)V

    .line 60
    return v2

    .line 44
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
