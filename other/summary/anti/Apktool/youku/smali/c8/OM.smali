.class public abstract Lc8/OM;
.super Landroid/os/Binder;
.source "ParcelableInputStream.java"

# interfaces
.implements Lc8/PM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NM;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anetwork.channel.aidl.ParcelableInputStream"

.field static final TRANSACTION_available:I = 0x1

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_length:I = 0x7

.field static final TRANSACTION_read:I = 0x5

.field static final TRANSACTION_readByte:I = 0x3

.field static final TRANSACTION_readBytes:I = 0x4

.field static final TRANSACTION_skip:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p0, p0, v0}, Lc8/OM;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/PM;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/PM;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lc8/PM;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lc8/NM;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/NM;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 44
    :sswitch_0
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lc8/OM;->available()I

    move-result v4

    .line 51
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v4    # "_result":I
    :sswitch_2
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lc8/OM;->close()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lc8/OM;->readByte()I

    move-result v4

    .line 66
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v4    # "_result":I
    :sswitch_4
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0_length":I
    if-gez v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 82
    .local v0, "_arg0":[B
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lc8/OM;->readBytes([BII)I

    move-result v4

    .line 86
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :cond_0
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_1

    .line 93
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_5
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 102
    .restart local v0    # "_arg0":[B
    :goto_2
    invoke-virtual {p0, v0}, Lc8/OM;->read([B)I

    move-result v4

    .line 103
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 100
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":I
    :cond_1
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_2

    .line 110
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_6
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lc8/OM;->skip(I)J

    move-result-wide v4

    .line 114
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":I
    .end local v4    # "_result":J
    :sswitch_7
    const-string/jumbo v7, "anetwork.channel.aidl.ParcelableInputStream"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lc8/OM;->length()I

    move-result v4

    .line 122
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
