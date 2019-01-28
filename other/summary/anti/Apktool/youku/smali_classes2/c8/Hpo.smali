.class public abstract Lc8/Hpo;
.super Landroid/os/Binder;
.source "IPassportService.java"

# interfaces
.implements Lc8/Ipo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ipo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Gpo;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.usercenter.passport.remote.IPassportService"

.field static final TRANSACTION_SNSAddBind:I = 0xd

.field static final TRANSACTION_SNSDeleteBind:I = 0xe

.field static final TRANSACTION_bindMobile:I = 0x16

.field static final TRANSACTION_bindSNS:I = 0x1b

.field static final TRANSACTION_getCookie:I = 0x7

.field static final TRANSACTION_getSNSBindInfo:I = 0x1a

.field static final TRANSACTION_getSNSBindInfos:I = 0xc

.field static final TRANSACTION_getSToken:I = 0x5

.field static final TRANSACTION_getUpdatedUserInfo:I = 0x1c

.field static final TRANSACTION_getUserInfo:I = 0x9

.field static final TRANSACTION_getUserTags:I = 0x14

.field static final TRANSACTION_getYktk:I = 0x6

.field static final TRANSACTION_h5ToNativeLogin:I = 0x10

.field static final TRANSACTION_handleCookieError:I = 0x12

.field static final TRANSACTION_handleMMAuth:I = 0xb

.field static final TRANSACTION_handleMMAuthFail:I = 0x1d

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_initWithCallback:I = 0x2

.field static final TRANSACTION_isBoundMobile:I = 0x15

.field static final TRANSACTION_isFingerprintAuthEnabled:I = 0x18

.field static final TRANSACTION_isFingerprintAvailable:I = 0x17

.field static final TRANSACTION_isLogin:I = 0x4

.field static final TRANSACTION_isLogining:I = 0x13

.field static final TRANSACTION_isQuickLoginAvailable:I = 0x1f

.field static final TRANSACTION_logout:I = 0x8

.field static final TRANSACTION_onActivityResult:I = 0xa

.field static final TRANSACTION_refreshSToken:I = 0x11

.field static final TRANSACTION_setFingerprintAuthEnabled:I = 0x19

.field static final TRANSACTION_shouldOverrideUrlLoading:I = 0xf

.field static final TRANSACTION_unbindSNS:I = 0x1e

.field static final TRANSACTION_validatePassport:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p0, p0, v0}, Lc8/Hpo;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/Ipo;
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
    const-string/jumbo v1, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/Ipo;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lc8/Ipo;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lc8/Gpo;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/Gpo;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Lcom/youku/usercenter/passport/remote/PassportConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/usercenter/passport/remote/PassportConfig;

    .line 55
    .local v0, "_arg0":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :goto_1
    invoke-virtual {p0, v0}, Lc8/Hpo;->init(Lcom/youku/usercenter/passport/remote/PassportConfig;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/youku/usercenter/passport/remote/PassportConfig;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :sswitch_2
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    sget-object v6, Lcom/youku/usercenter/passport/remote/PassportConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/usercenter/passport/remote/PassportConfig;

    .line 71
    .local v2, "_arg1":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lc8/Hpo;->initWithCallback(Lc8/Fpo;Lcom/youku/usercenter/passport/remote/PassportConfig;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v2    # "_arg1":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/youku/usercenter/passport/remote/PassportConfig;
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v2    # "_arg1":Lcom/youku/usercenter/passport/remote/PassportConfig;
    :sswitch_3
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lc8/Hpo;->validatePassport(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lc8/Hpo;->isLogin()Z

    move-result v5

    .line 90
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v5    # "_result":Z
    :sswitch_5
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lc8/Hpo;->getSToken()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lc8/Hpo;->getYktk()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lc8/Hpo;->getCookie()Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lc8/Hpo;->logout()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_9
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lc8/Hpo;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v5

    .line 129
    .local v5, "_result":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v5, :cond_3

    .line 131
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v5, p3, v7}, Lcom/youku/usercenter/passport/remote/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v5    # "_result":Lcom/youku/usercenter/passport/remote/UserInfo;
    :sswitch_a
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 148
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 153
    .local v1, "_arg2":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0, v2, v1}, Lc8/Hpo;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v1    # "_arg2":Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg2":Landroid/content/Intent;
    goto :goto_3

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/Hpo;->handleMMAuth(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 171
    .local v0, "_arg0":Lc8/Fpo;
    invoke-virtual {p0, v0}, Lc8/Hpo;->getSNSBindInfos(Lc8/Fpo;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Lc8/Fpo;
    :sswitch_d
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lc8/Hpo;->SNSAddBind(Lc8/Fpo;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lc8/Hpo;->SNSDeleteBind(Lc8/Fpo;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/Hpo;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v5

    .line 203
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v5, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_10
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Lc8/Fpo;
    invoke-virtual {p0, v0}, Lc8/Hpo;->h5ToNativeLogin(Lc8/Fpo;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Lc8/Fpo;
    :sswitch_11
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lc8/Hpo;->refreshSToken()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    :sswitch_12
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 230
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lc8/Hpo;->handleCookieError(IJ)Z

    move-result v5

    .line 231
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v5, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v5    # "_result":Z
    :sswitch_13
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lc8/Hpo;->isLogining()Z

    move-result v5

    .line 239
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v5    # "_result":Z
    :sswitch_14
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 249
    .local v0, "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v1, v4}, Lc8/Hpo;->getUserTags(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 260
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lc8/Hpo;->isBoundMobile()Z

    move-result v5

    .line 262
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v5, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v5    # "_result":Z
    :sswitch_16
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 271
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p0, v0}, Lc8/Hpo;->bindMobile(Lc8/Fpo;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Lc8/Fpo;
    :sswitch_17
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lc8/Hpo;->isFingerprintAvailable()Z

    move-result v5

    .line 279
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v5, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v5    # "_result":Z
    :sswitch_18
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lc8/Hpo;->isFingerprintAuthEnabled()Z

    move-result v5

    .line 287
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v5, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v5    # "_result":Z
    :sswitch_19
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    .line 296
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lc8/Hpo;->setFingerprintAuthEnabled(Z)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v6

    .line 295
    goto :goto_4

    .line 302
    :sswitch_1a
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 306
    .local v0, "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lc8/Hpo;->getSNSBindInfo(Lc8/Fpo;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v1}, Lc8/Hpo;->bindSNS(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 326
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p0, v0}, Lc8/Hpo;->getUpdatedUserInfo(Lc8/Fpo;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":Lc8/Fpo;
    :sswitch_1d
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lc8/Hpo;->handleMMAuthFail()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 342
    :sswitch_1e
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lc8/Epo;->asInterface(Landroid/os/IBinder;)Lc8/Fpo;

    move-result-object v0

    .line 346
    .restart local v0    # "_arg0":Lc8/Fpo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v1}, Lc8/Hpo;->unbindSNS(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 355
    .end local v0    # "_arg0":Lc8/Fpo;
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.IPassportService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lc8/Hpo;->isQuickLoginAvailable()Z

    move-result v5

    .line 357
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v5, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
