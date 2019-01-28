.class public final Lc8/vId;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    .line 446
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lc8/vId;->port:I

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    .line 454
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 1052
    invoke-static {p0, p1, p2, v4}, Lc8/wId;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1057
    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1058
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lc8/vId;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1060
    .local v1, "inetAddress":Ljava/net/InetAddress;
    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 1066
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return-object v3

    .line 1059
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Lc8/vId;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 1061
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1062
    .local v0, "address":[B
    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    invoke-static {v0}, Lc8/vId;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1063
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1066
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_3
    invoke-static {v2}, Lc8/LId;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1143
    move v0, p4

    .line 1145
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_0
    if-ge v5, p2, :cond_5

    .line 1146
    array-length v8, p3

    if-ne v1, v8, :cond_1

    .line 1172
    :cond_0
    :goto_1
    return v7

    .line 1149
    :cond_1
    if-eq v1, p4, :cond_2

    .line 1150
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_0

    .line 1151
    add-int/lit8 v5, v5, 0x1

    .line 1155
    :cond_2
    const/4 v6, 0x0

    .line 1156
    .local v6, "value":I
    move v4, v5

    .line 1157
    .local v4, "groupOffset":I
    :goto_2
    if-ge v5, p2, :cond_4

    .line 1158
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1159
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_4

    const/16 v8, 0x39

    if-gt v2, v8, :cond_4

    .line 1160
    if-nez v6, :cond_3

    if-ne v4, v5, :cond_0

    .line 1161
    :cond_3
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 1162
    const/16 v8, 0xff

    if-gt v6, v8, :cond_0

    .line 1157
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1164
    .end local v2    # "c":C
    :cond_4
    sub-int v3, v5, v4

    .line 1165
    .local v3, "groupLength":I
    if-eqz v3, :cond_0

    .line 1168
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 1169
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    .line 1171
    .end local v3    # "groupLength":I
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_5
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_0

    .line 1172
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1071
    const/16 v10, 0x10

    new-array v0, v10, [B

    .line 1072
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 1073
    .local v1, "b":I
    const/4 v4, -0x1

    .line 1074
    .local v4, "compress":I
    const/4 v6, -0x1

    .line 1076
    .local v6, "groupOffset":I
    move v8, p1

    .local v8, "i":I
    :goto_0
    if-ge v8, p2, :cond_2

    .line 1077
    array-length v10, v0

    if-ne v1, v10, :cond_0

    const/4 v10, 0x0

    .line 1134
    :goto_1
    return-object v10

    .line 1080
    :cond_0
    add-int/lit8 v10, v8, 0x2

    if-gt v10, p2, :cond_3

    const-string/jumbo v10, "::"

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v8, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1082
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    .line 1083
    :cond_1
    add-int/lit8 v8, v8, 0x2

    .line 1084
    add-int/lit8 v1, v1, 0x2

    .line 1085
    move v4, v1

    .line 1086
    if-ne v8, p2, :cond_4

    .line 1127
    :cond_2
    :goto_2
    array-length v10, v0

    if-eq v1, v10, :cond_c

    .line 1128
    const/4 v10, -0x1

    if-ne v4, v10, :cond_b

    const/4 v10, 0x0

    goto :goto_1

    .line 1087
    :cond_3
    if-eqz v1, :cond_4

    .line 1089
    const-string/jumbo v10, ":"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v8, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1090
    add-int/lit8 v8, v8, 0x1

    .line 1102
    :cond_4
    const/4 v9, 0x0

    .line 1103
    .local v9, "value":I
    move v6, v8

    .line 1104
    :goto_3
    if-ge v8, p2, :cond_8

    .line 1105
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1106
    .local v3, "c":C
    invoke-static {v3}, Lc8/wId;->decodeHexDigit(C)I

    move-result v7

    .line 1107
    .local v7, "hexDigit":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_8

    .line 1108
    shl-int/lit8 v10, v9, 0x4

    add-int v9, v10, v7

    .line 1104
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1091
    .end local v3    # "c":C
    .end local v7    # "hexDigit":I
    .end local v9    # "value":I
    :cond_5
    const-string/jumbo v10, "."

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v8, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1093
    add-int/lit8 v10, v1, -0x2

    invoke-static {p0, v6, p2, v0, v10}, Lc8/vId;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    goto :goto_1

    .line 1094
    :cond_6
    add-int/lit8 v1, v1, 0x2

    .line 1095
    goto :goto_2

    .line 1097
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 1110
    .restart local v9    # "value":I
    :cond_8
    sub-int v5, v8, v6

    .line 1111
    .local v5, "groupLength":I
    if-eqz v5, :cond_9

    const/4 v10, 0x4

    if-le v5, v10, :cond_a

    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 1114
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "b":I
    .local v2, "b":I
    ushr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 1115
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    int-to-byte v10, v9

    aput-byte v10, v0, v2

    goto/16 :goto_0

    .line 1129
    .end local v5    # "groupLength":I
    .end local v9    # "value":I
    :cond_b
    array-length v10, v0

    sub-int v11, v1, v4

    sub-int/2addr v10, v11

    sub-int v11, v1, v4

    invoke-static {v0, v4, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    array-length v10, v0

    sub-int/2addr v10, v1

    add-int/2addr v10, v4

    const/4 v11, 0x0

    invoke-static {v0, v4, v10, v11}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1134
    :cond_c
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_1

    .line 1136
    :catch_0
    move-exception v10

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 12
    .param p0, "address"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 1177
    const/4 v5, -0x1

    .line 1178
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    .line 1179
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1180
    move v1, v3

    .line 1181
    .local v1, "currentRunOffset":I
    :goto_1
    if-ge v3, v11, :cond_0

    aget-byte v7, p0, v3

    if-nez v7, :cond_0

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_0

    .line 1182
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1184
    :cond_0
    sub-int v0, v3, v1

    .line 1185
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_1

    .line 1186
    move v5, v1

    .line 1187
    move v4, v0

    .line 1179
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1192
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_2
    new-instance v6, Lc8/yJd;

    invoke-direct {v6}, Lc8/yJd;-><init>()V

    .line 1193
    .local v6, "result":Lc8/yJd;
    const/4 v3, 0x0

    :cond_3
    :goto_2
    array-length v7, p0

    if-ge v3, v7, :cond_6

    .line 1194
    if-ne v3, v5, :cond_4

    .line 1195
    invoke-virtual {v6, v10}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 1196
    add-int/2addr v3, v4

    .line 1197
    if-ne v3, v11, :cond_3

    invoke-virtual {v6, v10}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    goto :goto_2

    .line 1199
    :cond_4
    if-lez v3, :cond_5

    invoke-virtual {v6, v10}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 1200
    :cond_5
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 1201
    .local v2, "group":I
    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lc8/yJd;->writeHexadecimalUnsignedLong(J)Lc8/yJd;

    .line 1202
    add-int/lit8 v3, v3, 0x2

    .line 1203
    goto :goto_2

    .line 1205
    .end local v2    # "group":I
    :cond_6
    invoke-virtual {v6}, Lc8/yJd;->readUtf8()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 957
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 961
    const-string/jumbo v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e."

    .line 962
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".%2e"

    .line 963
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%2e%2e"

    .line 964
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 961
    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v10, -0x1

    .line 1211
    :try_start_0
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v9

    .line 1212
    .local v9, "portString":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1213
    .local v8, "i":I
    if-lez v8, :cond_0

    const v0, 0xffff

    if-gt v8, v0, :cond_0

    .line 1216
    .end local v8    # "i":I
    .end local v9    # "portString":Ljava/lang/String;
    :goto_0
    return v8

    .restart local v8    # "i":I
    .restart local v9    # "portString":Ljava/lang/String;
    :cond_0
    move v8, v10

    .line 1214
    goto :goto_0

    .line 1216
    .end local v8    # "i":I
    .end local v9    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move v8, v10

    goto :goto_0
.end method

.method private pop()V
    .locals 4

    .prologue
    .line 978
    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 981
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1035
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1036
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1035
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1039
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1046
    .end local v0    # "i":I
    :sswitch_1
    return v0

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 937
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 939
    .local v8, "segment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lc8/vId;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-direct {p0, v8}, Lc8/vId;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-direct {p0}, Lc8/vId;->pop()V

    goto :goto_0

    .line 946
    :cond_2
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 951
    :goto_1
    if-eqz p4, :cond_0

    .line 952
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :cond_3
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 909
    if-ne p2, p3, :cond_1

    .line 932
    :cond_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 914
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_2

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_4

    .line 916
    :cond_2
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 917
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 p2, p2, 0x1

    .line 925
    :goto_0
    move v2, p2

    .local v2, "i":I
    :cond_3
    :goto_1
    if-ge v2, p3, :cond_0

    .line 926
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 927
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_5

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 928
    invoke-direct/range {v0 .. v5}, Lc8/vId;->push(Ljava/lang/String;IIZZ)V

    .line 929
    move v2, v3

    .line 930
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 921
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4
    iget-object v0, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v7, ""

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 927
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v3, -0x1

    .line 993
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    move v2, v3

    .line 1015
    :cond_0
    :goto_0
    return v2

    .line 995
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 996
    .local v1, "c0":C
    if-lt v1, v8, :cond_2

    if-le v1, v9, :cond_4

    :cond_2
    if-lt v1, v6, :cond_3

    if-le v1, v7, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    .line 998
    :cond_4
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_9

    .line 999
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1001
    .local v0, "c":C
    if-lt v0, v8, :cond_5

    if-le v0, v9, :cond_8

    :cond_5
    if-lt v0, v6, :cond_6

    if-le v0, v7, :cond_8

    :cond_6
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x39

    if-le v0, v4, :cond_8

    :cond_7
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_8

    .line 1008
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    move v2, v3

    .line 1011
    goto :goto_0

    .line 998
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":C
    :cond_9
    move v2, v3

    .line 1015
    goto :goto_0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1020
    const/4 v1, 0x0

    .line 1021
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1022
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1023
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1024
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1025
    add-int/lit8 p1, p1, 0x1

    .line 1029
    goto :goto_0

    .line 1030
    .end local v0    # "c":C
    :cond_1
    return v1
.end method


# virtual methods
.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/vId;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 623
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    iget-object v0, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 625
    :cond_1
    iget-object v6, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 626
    invoke-static/range {v0 .. v5}, Lc8/wId;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v6, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p2

    move v3, v2

    move v5, v4

    .line 628
    invoke-static/range {v0 .. v5}, Lc8/wId;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-object p0

    .line 628
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lc8/wId;
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lc8/vId;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v0, p0, Lc8/vId;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    new-instance v0, Lc8/wId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/wId;-><init>(Lc8/vId;Lc8/uId;)V

    return-object v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lc8/vId;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/vId;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/vId;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lc8/wId;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedQuery(Ljava/lang/String;)Lc8/vId;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 614
    if-eqz p1, :cond_0

    const-string/jumbo v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 616
    invoke-static/range {v0 .. v5}, Lc8/wId;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lc8/wId;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 618
    return-object p0

    .line 615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parse(Lc8/wId;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;
    .locals 28
    .param p1, "base"    # Lc8/wId;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lc8/LId;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 787
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3}, Lc8/LId;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v23

    .line 790
    .local v23, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lc8/vId;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v26

    .line 791
    .local v26, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_3

    .line 792
    const/4 v4, 0x1

    const-string/jumbo v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    const-string/jumbo v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->scheme:Ljava/lang/String;

    .line 794
    const-string/jumbo v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 808
    :goto_0
    const/16 v22, 0x0

    .line 809
    .local v22, "hasUsername":Z
    const/16 v21, 0x0

    .line 810
    .local v21, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lc8/vId;->slashCount(Ljava/lang/String;II)I

    move-result v27

    .line 811
    .local v27, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v27

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lc8/wId;->access$100(Lc8/wId;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/vId;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 821
    :cond_0
    add-int v5, v5, v27

    .line 824
    :goto_1
    const-string/jumbo v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v20

    .line 825
    .local v20, "componentDelimiterOffset":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 826
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 828
    .local v18, "c":I
    :goto_2
    sparse-switch v18, :sswitch_data_0

    goto :goto_1

    .line 858
    :sswitch_0
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1}, Lc8/vId;->portColonOffset(Ljava/lang/String;II)I

    move-result v25

    .line 859
    .local v25, "portColonOffset":I
    add-int/lit8 v3, v25, 0x1

    move/from16 v0, v20

    if-ge v3, v0, :cond_9

    .line 860
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lc8/vId;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->host:Ljava/lang/String;

    .line 861
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Lc8/vId;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/vId;->port:I

    .line 862
    move-object/from16 v0, p0

    iget v3, v0, Lc8/vId;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    .line 904
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v21    # "hasPassword":Z
    .end local v22    # "hasUsername":Z
    .end local v25    # "portColonOffset":I
    .end local v27    # "slashCount":I
    :goto_3
    return-object v3

    .line 795
    :cond_1
    const/4 v4, 0x1

    const-string/jumbo v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 796
    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->scheme:Ljava/lang/String;

    .line 797
    const-string/jumbo v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 799
    :cond_2
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto :goto_3

    .line 801
    :cond_3
    if-eqz p1, :cond_4

    .line 802
    invoke-static/range {p1 .. p1}, Lc8/wId;->access$100(Lc8/wId;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->scheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 804
    :cond_4
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto :goto_3

    .line 826
    .restart local v20    # "componentDelimiterOffset":I
    .restart local v21    # "hasPassword":Z
    .restart local v22    # "hasUsername":Z
    .restart local v27    # "slashCount":I
    :cond_5
    const/16 v18, -0x1

    goto :goto_2

    .line 831
    .restart local v18    # "c":I
    :sswitch_1
    if-nez v21, :cond_8

    .line 832
    const/16 v3, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1, v3}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 834
    .local v6, "passwordColonOffset":I
    const-string/jumbo v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v19

    .line 836
    .local v19, "canonicalUsername":Ljava/lang/String;
    if-eqz v22, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .end local v19    # "canonicalUsername":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/vId;->encodedUsername:Ljava/lang/String;

    .line 839
    move/from16 v0, v20

    if-eq v6, v0, :cond_7

    .line 840
    const/16 v21, 0x1

    .line 841
    add-int/lit8 v8, v6, 0x1

    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move/from16 v9, v20

    invoke-static/range {v7 .. v14}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    .line 844
    :cond_7
    const/16 v22, 0x1

    .line 849
    .end local v6    # "passwordColonOffset":I
    :goto_4
    add-int/lit8 v5, v20, 0x1

    .line 850
    goto/16 :goto_1

    .line 846
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v20

    invoke-static/range {v7 .. v14}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    goto :goto_4

    .line 864
    .restart local v25    # "portColonOffset":I
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lc8/vId;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->host:Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/vId;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lc8/wId;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/vId;->port:I

    .line 867
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/vId;->host:Ljava/lang/String;

    if-nez v3, :cond_b

    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    .line 868
    :cond_b
    move/from16 v5, v20

    .line 886
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v25    # "portColonOffset":I
    :cond_c
    :goto_5
    const-string/jumbo v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v24

    .line 887
    .local v24, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v5, v2}, Lc8/vId;->resolvePath(Ljava/lang/String;II)V

    .line 891
    move/from16 v5, v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_d

    .line 892
    const/16 v3, 0x23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v9

    .line 893
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string/jumbo v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v14}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/wId;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 895
    move v5, v9

    .line 899
    .end local v9    # "queryDelimiterOffset":I
    :cond_d
    move/from16 v0, v23

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_e

    .line 900
    add-int/lit8 v11, v5, 0x1

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v23

    invoke-static/range {v10 .. v17}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedFragment:Ljava/lang/String;

    .line 904
    :cond_e
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    .line 874
    .end local v24    # "pathDelimiterOffset":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lc8/wId;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    .line 875
    invoke-virtual/range {p1 .. p1}, Lc8/wId;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    .line 876
    invoke-static/range {p1 .. p1}, Lc8/wId;->access$200(Lc8/wId;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/vId;->host:Ljava/lang/String;

    .line 877
    invoke-static/range {p1 .. p1}, Lc8/wId;->access$300(Lc8/wId;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/vId;->port:I

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lc8/wId;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    move/from16 v0, v23

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_c

    .line 881
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lc8/wId;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/vId;->encodedQuery(Ljava/lang/String;)Lc8/vId;

    goto/16 :goto_5

    .line 828
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc8/vId;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v2, p0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 739
    :cond_0
    iget-object v2, p0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v2, p0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 741
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    iget-object v2, p0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    :cond_2
    iget-object v2, p0, Lc8/vId;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 749
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    iget-object v2, p0, Lc8/vId;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    :goto_0
    invoke-virtual {p0}, Lc8/vId;->effectivePort()I

    move-result v0

    .line 757
    .local v0, "effectivePort":I
    iget-object v2, p0, Lc8/vId;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lc8/wId;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 758
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    :cond_3
    iget-object v2, p0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lc8/wId;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 764
    iget-object v2, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 765
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    iget-object v2, p0, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lc8/wId;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 769
    :cond_4
    iget-object v2, p0, Lc8/vId;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 770
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    iget-object v2, p0, Lc8/vId;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 753
    .end local v0    # "effectivePort":I
    :cond_6
    iget-object v2, p0, Lc8/vId;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
