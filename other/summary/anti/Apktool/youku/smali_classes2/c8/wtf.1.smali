.class public abstract Lc8/wtf;
.super Landroid/os/Binder;
.source "IOrangeApiService.java"

# interfaces
.implements Lc8/xtf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vtf;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.taobao.orange.aidl.IOrangeApiService"

.field static final TRANSACTION_addFail:I = 0x9

.field static final TRANSACTION_enterForeground:I = 0x8

.field static final TRANSACTION_getConfig:I = 0x2

.field static final TRANSACTION_getConfigs:I = 0x3

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_registerListener:I = 0x4

.field static final TRANSACTION_registerListenerV1:I = 0x5

.field static final TRANSACTION_setAppSecret:I = 0xb

.field static final TRANSACTION_setUserId:I = 0xa

.field static final TRANSACTION_unregisterListenerV1:I = 0x6

.field static final TRANSACTION_unregisterListeners:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.taobao.orange.aidl.IOrangeApiService"

    invoke-virtual {p0, p0, v0}, Lc8/wtf;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc8/xtf;
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
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/xtf;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lc8/xtf;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lc8/vtf;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lc8/vtf;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 63
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 65
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "_arg8":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg10":Ljava/lang/String;
    move-object v1, p0

    .line 70
    invoke-virtual/range {v1 .. v12}, Lc8/wtf;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":[Ljava/lang/String;
    .end local v11    # "_arg9":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lc8/wtf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/wtf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 94
    .local v13, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 96
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Ljava/util/Map;
    :sswitch_4
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lc8/Ctf;->asInterface(Landroid/os/IBinder;)Lc8/Dtf;

    move-result-object v3

    .line 105
    .local v3, "_arg1":Lc8/Dtf;
    invoke-virtual {p0, v2, v3}, Lc8/wtf;->registerListener([Ljava/lang/String;Lc8/Dtf;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lc8/Dtf;
    :sswitch_5
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lc8/Ftf;->asInterface(Landroid/os/IBinder;)Lc8/Gtf;

    move-result-object v3

    .line 116
    .local v3, "_arg1":Lc8/Gtf;
    invoke-virtual {p0, v2, v3}, Lc8/wtf;->registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lc8/Gtf;
    :sswitch_6
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lc8/Ftf;->asInterface(Landroid/os/IBinder;)Lc8/Gtf;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg1":Lc8/Gtf;
    invoke-virtual {p0, v2, v3}, Lc8/wtf;->unregisterListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 133
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lc8/Gtf;
    :sswitch_7
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/wtf;->unregisterListeners([Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    .end local v2    # "_arg0":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lc8/wtf;->enterForeground()V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 149
    :sswitch_9
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/wtf;->addFail(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 158
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/wtf;->setUserId(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v1, "com.taobao.orange.aidl.IOrangeApiService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/wtf;->setAppSecret(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v1, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
