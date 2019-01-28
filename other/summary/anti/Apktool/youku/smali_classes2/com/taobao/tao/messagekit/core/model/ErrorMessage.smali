.class public Lcom/taobao/tao/messagekit/core/model/ErrorMessage;
.super Lcom/taobao/tao/messagekit/core/model/BaseMessage;
.source "ErrorMessage.java"


# instance fields
.field public content:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/taobao/tao/messagekit/core/model/BaseMessage;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/taobao/tao/messagekit/core/model/BaseMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/taobao/tao/messagekit/core/model/BaseMessage;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/taobao/tao/messagekit/core/model/BaseMessage;-><init>(Lcom/taobao/tao/messagekit/core/model/BaseMessage;)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->msgType:I

    .line 27
    const/16 v0, -0x64

    iput v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->type:I

    .line 28
    return-void
.end method

.method public static create()Lcom/taobao/tao/messagekit/core/model/ErrorMessage;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;

    invoke-direct {v0}, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;-><init>()V

    .line 32
    .local v0, "myself":Lcom/taobao/tao/messagekit/core/model/ErrorMessage;
    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->assemble()V

    .line 33
    const/4 v1, 0x3

    iput v1, v0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->msgType:I

    .line 34
    const/16 v1, -0x64

    iput v1, v0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->type:I

    .line 35
    return-object v0
.end method


# virtual methods
.method public bizCode()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->bizCode:I

    return v0
.end method

.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public createTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->createTime:J

    return-wide v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 74
    iget-byte v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->header:Lc8/eyf;

    iput-object p1, v0, Lc8/eyf;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->header:Lc8/eyf;

    iget v0, v0, Lc8/eyf;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->sysCode:I

    return v0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taobao/tao/messagekit/core/model/ErrorMessage;->header:Lc8/eyf;

    iget-object v0, v0, Lc8/eyf;->userId:Ljava/lang/String;

    return-object v0
.end method
