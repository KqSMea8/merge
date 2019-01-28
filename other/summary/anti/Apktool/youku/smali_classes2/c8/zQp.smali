.class public Lc8/zQp;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkStatus"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkClassByType(I)Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1
    .param p0, "subType"    # I

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 149
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    .line 152
    .local v0, "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    :goto_0
    return-object v0

    .line 132
    .end local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    :pswitch_0
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    .line 133
    .restart local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    goto :goto_0

    .line 143
    .end local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    :pswitch_1
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    .line 144
    .restart local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    goto :goto_0

    .line 146
    .end local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    :pswitch_2
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    .line 147
    .restart local v0    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 114
    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "GPRS"

    goto :goto_0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "EDGE"

    goto :goto_0

    .line 88
    :pswitch_2
    const-string/jumbo v0, "UMTS"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "HSDPA"

    goto :goto_0

    .line 92
    :pswitch_4
    const-string/jumbo v0, "HSUPA"

    goto :goto_0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "HSPA"

    goto :goto_0

    .line 96
    :pswitch_6
    const-string/jumbo v0, "CDMA"

    goto :goto_0

    .line 98
    :pswitch_7
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 100
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 102
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 104
    :pswitch_a
    const-string/jumbo v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 106
    :pswitch_b
    const-string/jumbo v0, "LTE"

    goto :goto_0

    .line 108
    :pswitch_c
    const-string/jumbo v0, "CDMA - eHRPD"

    goto :goto_0

    .line 110
    :pswitch_d
    const-string/jumbo v0, "iDEN"

    goto :goto_0

    .line 112
    :pswitch_e
    const-string/jumbo v0, "HSPA+"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method
