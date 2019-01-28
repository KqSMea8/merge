.class public abstract Lc8/ten;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lc8/uen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sen;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.service.download.ICallback"

.field static final TRANSACTION_getCookie:I = 0x6

.field static final TRANSACTION_getSToken:I = 0x5

.field static final TRANSACTION_getYKTK:I = 0x4

.field static final TRANSACTION_onChanged:I = 0x1

.field static final TRANSACTION_onFinish:I = 0x2

.field static final TRANSACTION_refresh:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.youku.service.download.ICallback"

    invoke-virtual {p0, p0, v0}, Lc8/ten;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/uen;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string/jumbo v1, "com.youku.service.download.ICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/uen;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lc8/uen;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lc8/sen;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/sen;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Lcom/youku/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 62
    .local v0, "_arg0":Lcom/youku/service/download/DownloadInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lc8/ten;->onChanged(Lcom/youku/service/download/DownloadInfo;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    :sswitch_2
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v3, Lcom/youku/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 76
    .restart local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lc8/ten;->onFinish(Lcom/youku/service/download/DownloadInfo;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    goto :goto_2

    .line 82
    .end local v0    # "_arg0":Lcom/youku/service/download/DownloadInfo;
    :sswitch_3
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lc8/ten;->refresh()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_4
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lc8/ten;->getYKTK()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lc8/ten;->getSToken()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v3, "com.youku.service.download.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lc8/ten;->getCookie()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
