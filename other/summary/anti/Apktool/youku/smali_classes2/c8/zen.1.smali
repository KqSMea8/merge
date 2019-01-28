.class public abstract Lc8/zen;
.super Landroid/os/Binder;
.source "IDownloadService.java"

# interfaces
.implements Lc8/Aen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Aen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yen;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.service.download.IDownloadService"

.field static final TRANSACTION_bindAccService:I = 0x18

.field static final TRANSACTION_canDownloadNotify:I = 0x16

.field static final TRANSACTION_canUse3GDownload:I = 0xf

.field static final TRANSACTION_deleteDownloadeds:I = 0x6

.field static final TRANSACTION_deleteDownloadingVideos:I = 0x5

.field static final TRANSACTION_disableVipMode:I = 0x1c

.field static final TRANSACTION_down:I = 0x3

.field static final TRANSACTION_enableVipMode:I = 0x1b

.field static final TRANSACTION_getCurrentDownloadSDCardPath:I = 0x9

.field static final TRANSACTION_getDownloadFormat:I = 0xb

.field static final TRANSACTION_getDownloadLanguage:I = 0xd

.field static final TRANSACTION_getDownloadingData:I = 0x8

.field static final TRANSACTION_isScreenAwakeEnabled:I = 0x19

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_refresh:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setApi:I = 0x13

.field static final TRANSACTION_setCanUse3GDownload:I = 0x10

.field static final TRANSACTION_setCookie:I = 0x17

.field static final TRANSACTION_setCurrentDownloadSDCardPath:I = 0xa

.field static final TRANSACTION_setDownloadFormat:I = 0xc

.field static final TRANSACTION_setDownloadLanguage:I = 0xe

.field static final TRANSACTION_setDownloadNotify:I = 0x15

.field static final TRANSACTION_setLog:I = 0x14

.field static final TRANSACTION_setP2p_switch:I = 0x11

.field static final TRANSACTION_setScreenAwakeEnabled:I = 0x1a

.field static final TRANSACTION_setTimeStamp:I = 0x12

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.youku.service.download.IDownloadService"

    invoke-virtual {p0, p0, v0}, Lc8/zen;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/Aen;
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
    const-string/jumbo v1, "com.youku.service.download.IDownloadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/Aen;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lc8/Aen;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lc8/yen;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/yen;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 49
    :sswitch_0
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/ten;->asInterface(Landroid/os/IBinder;)Lc8/uen;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lc8/uen;
    invoke-virtual {p0, v0}, Lc8/zen;->registerCallback(Lc8/uen;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lc8/uen;
    :sswitch_2
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lc8/zen;->unregister()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->down(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->pause(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 91
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Lc8/zen;->deleteDownloadingVideos(Ljava/util/Map;)Z

    move-result v4

    .line 93
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 102
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Ljava/util/List;
    invoke-virtual {p0, v0}, Lc8/zen;->deleteDownloadeds(Ljava/util/List;)Z

    move-result v4

    .line 104
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Ljava/util/List;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_7
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lc8/zen;->refresh()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    :sswitch_8
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lc8/zen;->getDownloadingData()Ljava/util/Map;

    move-result-object v4

    .line 119
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 125
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_9
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lc8/zen;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lc8/zen;->getDownloadFormat()I

    move-result v4

    .line 144
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v4    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lc8/zen;->setDownloadFormat(I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lc8/zen;->getDownloadLanguage()I

    move-result v4

    .line 161
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v4    # "_result":I
    :sswitch_e
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lc8/zen;->setDownloadLanguage(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lc8/zen;->canUse3GDownload()Z

    move-result v4

    .line 178
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v4    # "_result":Z
    :sswitch_10
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v7

    .line 187
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lc8/zen;->setCanUse3GDownload(Z)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v6

    .line 186
    goto :goto_1

    .line 193
    :sswitch_11
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v2, v7

    .line 199
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v3, v7

    .line 200
    .local v3, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lc8/zen;->setP2p_switch(IZZ)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_4
    move v2, v6

    .line 197
    goto :goto_2

    .restart local v2    # "_arg1":Z
    :cond_5
    move v3, v6

    .line 199
    goto :goto_3

    .line 206
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_12
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 209
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lc8/zen;->setTimeStamp(J)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":J
    :sswitch_13
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->setApi(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->setLog(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v7

    .line 236
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lc8/zen;->setDownloadNotify(Z)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v6

    .line 235
    goto :goto_4

    .line 242
    :sswitch_16
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lc8/zen;->canDownloadNotify()Z

    move-result v4

    .line 244
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v4    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zen;->setCookie(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lc8/zen;->bindAccService()V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    :sswitch_19
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lc8/zen;->isScreenAwakeEnabled()Z

    move-result v4

    .line 268
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string/jumbo v8, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v0, v7

    .line 277
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lc8/zen;->setScreenAwakeEnabled(Z)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_9
    move v0, v6

    .line 276
    goto :goto_5

    .line 283
    :sswitch_1b
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lc8/zen;->enableVipMode(I)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 292
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v6, "com.youku.service.download.IDownloadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lc8/zen;->disableVipMode()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
