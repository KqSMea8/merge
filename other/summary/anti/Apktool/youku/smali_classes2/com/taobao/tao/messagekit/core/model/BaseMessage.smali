.class public abstract Lcom/taobao/tao/messagekit/core/model/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"

# interfaces
.implements Lcom/taobao/tao/messagekit/core/model/IProtocol;


# instance fields
.field public bizCode:I

.field public createTime:J

.field public ext:Ljava/lang/String;

.field public header:Lc8/eyf;

.field public msgType:I

.field public needACK:Z

.field public qosLevel:B

.field public retain:B

.field public routerId:Ljava/lang/String;

.field public serializeType:B

.field public sysCode:I

.field public type:I

.field public typeVersion:B

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->ext:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/taobao/tao/messagekit/core/model/BaseMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/taobao/tao/messagekit/core/model/BaseMessage;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->ext:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->msgType:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->msgType:I

    .line 57
    iget-boolean v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->needACK:Z

    iput-boolean v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->needACK:Z

    .line 58
    iget-byte v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->qosLevel:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->qosLevel:B

    .line 59
    iget-byte v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->retain:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->retain:B

    .line 60
    iget v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->version:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->version:I

    .line 61
    iget-byte v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->serializeType:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->serializeType:B

    .line 62
    iget v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->sysCode:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->sysCode:I

    .line 63
    iget v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->type:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->type:I

    .line 64
    iget-byte v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->typeVersion:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->typeVersion:B

    .line 65
    iget v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizCode:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizCode:I

    .line 66
    iget-object v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    .line 68
    iget-object v0, p1, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->routerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public assemble()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->createTime:J

    .line 80
    iput v2, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->version:I

    .line 81
    iput-byte v2, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->serializeType:B

    .line 84
    iput-byte v2, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->typeVersion:B

    .line 86
    new-instance v0, Lc8/eyf;

    invoke-direct {v0}, Lc8/eyf;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    .line 87
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    invoke-static {}, Lc8/PJf;->generateDataId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/eyf;->messageId:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    invoke-static {}, Lc8/PJf;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/eyf;->appVersion:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    const-string/jumbo v1, "0.2.1"

    iput-object v1, v0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    invoke-static {}, Lc8/PJf;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/eyf;->userId:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    invoke-static {}, Lc8/PJf;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/eyf;->token:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public bizCode()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizCode:I

    return v0
.end method

.method public abstract bizToProtocol()[B
.end method

.method public abstract bodyToProtocol()[B
.end method

.method public createTime()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->createTime:J

    return-wide v0
.end method

.method public fromProtocol(Lc8/Qxf;)V
    .locals 1
    .param p1, "data"    # Lc8/Qxf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 106
    iget-byte v0, p1, Lc8/Qxf;->mqttMsgType:B

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->msgType:I

    .line 107
    iget-byte v0, p1, Lc8/Qxf;->dupFlag:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->needACK:Z

    .line 108
    iget-byte v0, p1, Lc8/Qxf;->qosLevel:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->qosLevel:B

    .line 109
    iget-byte v0, p1, Lc8/Qxf;->retain:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->retain:B

    .line 110
    iget-byte v0, p1, Lc8/Qxf;->version:B

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->version:I

    .line 112
    iget-byte v0, p1, Lc8/Qxf;->serializeType:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->serializeType:B

    .line 113
    iget-byte v0, p1, Lc8/Qxf;->sysCode:B

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->sysCode:I

    .line 114
    iget-byte v0, p1, Lc8/Qxf;->type:B

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->type:I

    .line 115
    iget-byte v0, p1, Lc8/Qxf;->typeVersion:B

    iput-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->typeVersion:B

    .line 116
    iget v0, p1, Lc8/Qxf;->namespace:I

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizCode:I

    .line 118
    invoke-static {p1}, Lc8/eKf;->getHeadBytes(Lc8/Qxf;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/eyf;->parseFrom([B)Lc8/eyf;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    .line 119
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public monitorTag()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget v0, v0, Lc8/eyf;->monitorTag:I

    return v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 154
    iget-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iput-object p1, v0, Lc8/eyf;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget v0, v0, Lc8/eyf;->statusCode:I

    return v0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget v0, v0, Lc8/eyf;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->sysCode:I

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public toProtocol()[B
    .locals 11

    .prologue
    .line 96
    new-instance v0, Lc8/Qxf;

    iget v1, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->msgType:I

    iget-boolean v2, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->needACK:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-byte v3, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->qosLevel:B

    iget-byte v4, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->retain:B

    iget v5, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->version:I

    iget-byte v6, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->serializeType:B

    iget v7, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->sysCode:I

    iget v8, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->type:I

    iget-byte v9, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->typeVersion:B

    iget v10, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizCode:I

    invoke-direct/range {v0 .. v10}, Lc8/Qxf;-><init>(IIIIIIIIII)V

    .line 101
    .local v0, "protocol":Lc8/Qxf;
    iget-object v1, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    invoke-static {v1}, Lc8/eyf;->toByteArray(Lc8/Gmd;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bodyToProtocol()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->bizToProtocol()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Qxf;->write([B[B[B)[B

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "protocol":Lc8/Qxf;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/BaseMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->userId:Ljava/lang/String;

    return-object v0
.end method
