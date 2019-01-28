.class public Lc8/Hcq;
.super Lc8/Gcq;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fragmentedframe:Lc8/Ocq;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lc8/Hcq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/Hcq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/Gcq;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hcq;->fragmentedframe:Lc8/Ocq;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lc8/Hcq;->reuseableRandom:Ljava/util/Random;

    return-void
.end method

.method private fromOpcode(Lorg/java_websocket/framing/Framedata$Opcode;)B
    .locals 3
    .param p1, "opcode"    # Lorg/java_websocket/framing/Framedata$Opcode;

    .prologue
    .line 160
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 162
    :cond_0
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_1

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_2

    .line 165
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_3

    .line 167
    const/16 v0, 0x8

    goto :goto_0

    .line 168
    :cond_3
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_4

    .line 169
    const/16 v0, 0x9

    goto :goto_0

    .line 170
    :cond_4
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_5

    .line 171
    const/16 v0, 0xa

    goto :goto_0

    .line 172
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/java_websocket/framing/Framedata$Opcode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "seckey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "acc":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 184
    .local v3, "sh1":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lc8/idq;->encodeBytes([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 181
    .end local v3    # "sh1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static readVersion(Lc8/Vcq;)I
    .locals 4
    .param p0, "handshakedata"    # Lc8/Vcq;

    .prologue
    const/4 v0, -0x1

    .line 50
    const-string/jumbo v2, "Sec-WebSocket-Version"

    invoke-interface {p0, v2}, Lc8/Vcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "vers":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private toByteArray(JI)[B
    .locals 7
    .param p1, "val"    # J
    .param p3, "bytecount"    # I

    .prologue
    .line 213
    new-array v0, p3, [B

    .line 214
    .local v0, "buffer":[B
    mul-int/lit8 v3, p3, 0x8

    add-int/lit8 v1, v3, -0x8

    .line 215
    .local v1, "highest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 216
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v0
.end method

.method private toOpcode(B)Lorg/java_websocket/framing/Framedata$Opcode;
    .locals 3
    .param p1, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 238
    :pswitch_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_1
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    .line 235
    :goto_0
    return-object v0

    .line 226
    :pswitch_2
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 228
    :pswitch_3
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 231
    :pswitch_4
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 233
    :pswitch_5
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 235
    :pswitch_6
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lc8/Qcq;Lc8/Xcq;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 3
    .param p1, "request"    # Lc8/Qcq;
    .param p2, "response"    # Lc8/Xcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Lc8/Qcq;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lc8/Xcq;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 79
    :goto_0
    return-object v2

    .line 73
    :cond_1
    const-string/jumbo v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lc8/Xcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "seckey_answere":Ljava/lang/String;
    const-string/jumbo v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Lc8/Qcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "seckey_challenge":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/Hcq;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public acceptHandshakeAsServer(Lc8/Qcq;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Lc8/Qcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lc8/Hcq;->readVersion(Lc8/Vcq;)I

    move-result v0

    .line 86
    .local v0, "v":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Hcq;->basicAccept(Lc8/Vcq;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 88
    :goto_0
    return-object v1

    .line 87
    :cond_1
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 88
    :cond_2
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public copyInstance()Lc8/Gcq;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lc8/Hcq;

    invoke-direct {v0}, Lc8/Hcq;-><init>()V

    return-object v0
.end method

.method public createBinaryFrame(Lc8/Ocq;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "framedata"    # Lc8/Ocq;

    .prologue
    .line 93
    invoke-interface {p1}, Lc8/Ocq;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 94
    .local v4, "mes":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lc8/Hcq;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v10, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v9, v10, :cond_0

    const/4 v2, 0x1

    .line 95
    .local v2, "mask":Z
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x7d

    if-gt v9, v10, :cond_1

    const/4 v8, 0x1

    .line 96
    .local v8, "sizebytes":I
    :goto_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    :goto_2
    add-int/lit8 v10, v9, 0x1

    if-eqz v2, :cond_4

    const/4 v9, 0x4

    :goto_3
    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lc8/Ocq;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v9

    invoke-direct {p0, v9}, Lc8/Hcq;->fromOpcode(Lorg/java_websocket/framing/Framedata$Opcode;)B

    move-result v6

    .line 98
    .local v6, "optcode":B
    invoke-interface {p1}, Lc8/Ocq;->isFin()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, -0x80

    :goto_4
    int-to-byte v5, v9

    .line 99
    .local v5, "one":B
    or-int v9, v5, v6

    int-to-byte v5, v9

    .line 100
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v10, v9

    invoke-direct {p0, v10, v11, v8}, Lc8/Hcq;->toByteArray(JI)[B

    move-result-object v7

    .line 102
    .local v7, "payloadlengthbytes":[B
    sget-boolean v9, Lc8/Hcq;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    array-length v9, v7

    if-eq v9, v8, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 94
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "mask":Z
    .end local v5    # "one":B
    .end local v6    # "optcode":B
    .end local v7    # "payloadlengthbytes":[B
    .end local v8    # "sizebytes":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    .restart local v2    # "mask":Z
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const v10, 0xffff

    if-gt v9, v10, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    goto :goto_1

    .restart local v8    # "sizebytes":I
    :cond_3
    move v9, v8

    .line 96
    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 98
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "optcode":B
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 104
    .restart local v5    # "one":B
    .restart local v7    # "payloadlengthbytes":[B
    :cond_6
    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 105
    const/4 v9, 0x0

    aget-byte v10, v7, v9

    if-eqz v2, :cond_7

    const/16 v9, -0x80

    :goto_5
    or-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    :goto_6
    if-eqz v2, :cond_d

    .line 116
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 117
    .local v3, "maskkey":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lc8/Hcq;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 120
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    rem-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 105
    .end local v1    # "i":I
    .end local v3    # "maskkey":Ljava/nio/ByteBuffer;
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 106
    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 107
    if-eqz v2, :cond_9

    const/16 v9, -0x80

    :goto_8
    or-int/lit8 v9, v9, 0x7e

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 107
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .line 109
    :cond_a
    const/16 v9, 0x8

    if-ne v8, v9, :cond_c

    .line 110
    if-eqz v2, :cond_b

    const/16 v9, -0x80

    :goto_9
    or-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 110
    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    .line 113
    :cond_c
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Size representation not supported/specified"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    :cond_d
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    :cond_e
    sget-boolean v9, Lc8/Hcq;->$assertionsDisabled:Z

    if-nez v9, :cond_f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(I)V

    throw v9

    .line 126
    :cond_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    return-object v0
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lc8/Ocq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lc8/Pcq;

    invoke-direct {v0}, Lc8/Pcq;-><init>()V

    .line 149
    .local v0, "curframe":Lc8/Ncq;
    :try_start_0
    invoke-static {p1}, Lc8/jdq;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Lc8/Ncq;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lc8/Ncq;->setFin(Z)V

    .line 154
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Lc8/Ncq;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 155
    invoke-interface {v0, p2}, Lc8/Ncq;->setTransferemasked(Z)V

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 3
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lc8/Ocq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lc8/Pcq;

    invoke-direct {v0}, Lc8/Pcq;-><init>()V

    .line 135
    .local v0, "curframe":Lc8/Ncq;
    :try_start_0
    invoke-interface {v0, p1}, Lc8/Ncq;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lc8/Ncq;->setFin(Z)V

    .line 140
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Lc8/Ncq;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 141
    invoke-interface {v0, p2}, Lc8/Ncq;->setTransferemasked(Z)V

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lc8/Rcq;)Lc8/Rcq;
    .locals 3
    .param p1, "request"    # Lc8/Rcq;

    .prologue
    .line 189
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "websocket"

    invoke-interface {p1, v1, v2}, Lc8/Rcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Upgrade"

    invoke-interface {p1, v1, v2}, Lc8/Rcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "Sec-WebSocket-Version"

    const-string/jumbo v2, "8"

    invoke-interface {p1, v1, v2}, Lc8/Rcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 194
    .local v0, "random":[B
    iget-object v1, p0, Lc8/Hcq;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 195
    const-string/jumbo v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lc8/idq;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lc8/Rcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lc8/Qcq;Lc8/Ycq;)Lc8/Scq;
    .locals 3
    .param p1, "request"    # Lc8/Qcq;
    .param p2, "response"    # Lc8/Ycq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 202
    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "websocket"

    invoke-interface {p2, v1, v2}, Lc8/Ycq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Connection"

    invoke-interface {p1, v2}, Lc8/Qcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lc8/Ycq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "Switching Protocols"

    invoke-interface {p2, v1}, Lc8/Ycq;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lc8/Qcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "seckey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 207
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string/jumbo v2, "missing Sec-WebSocket-Key"

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    const-string/jumbo v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lc8/Hcq;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lc8/Ycq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object p2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 386
    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Ocq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExedeedException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 247
    .local v5, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_2

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 253
    .local v0, "available_next_byte_count":I
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 255
    .local v3, "expected_next_byte_count":I
    if-le v3, v0, :cond_1

    .line 257
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 296
    .end local v0    # "available_next_byte_count":I
    .end local v3    # "expected_next_byte_count":I
    .end local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 261
    .restart local v0    # "available_next_byte_count":I
    .restart local v3    # "expected_next_byte_count":I
    .restart local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_1
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v7}, Lc8/Hcq;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lc8/Ocq;

    move-result-object v1

    .line 265
    .local v1, "cur":Lc8/Ocq;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v7, 0x0

    iput-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v0    # "available_next_byte_count":I
    .end local v1    # "cur":Lc8/Ocq;
    .end local v3    # "expected_next_byte_count":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 285
    :try_start_1
    invoke-virtual {p0, p1}, Lc8/Hcq;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lc8/Ocq;

    move-result-object v1

    .line 286
    .restart local v1    # "cur":Lc8/Ocq;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 287
    .end local v1    # "cur":Lc8/Ocq;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v6

    .line 291
    .local v6, "pref":I
    invoke-virtual {p0, v6}, Lc8/Hcq;->checkAlloc(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 292
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 268
    .end local v2    # "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    .end local v6    # "pref":I
    :catch_1
    move-exception v2

    .line 270
    .restart local v2    # "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    .line 271
    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v7

    invoke-virtual {p0, v7}, Lc8/Hcq;->checkAlloc(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 272
    .local v4, "extendedframe":Ljava/nio/ByteBuffer;
    sget-boolean v7, Lc8/Hcq;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v8, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-gt v7, v8, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 273
    :cond_3
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 274
    iget-object v7, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 275
    iput-object v4, p0, Lc8/Hcq;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 277
    invoke-virtual {p0, p1}, Lc8/Hcq;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public translateSingleFrame(Ljava/nio/ByteBuffer;)Lc8/Ocq;
    .locals 24
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/drafts/Draft_10$IncompleteException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    .line 301
    .local v14, "maxpacketsize":I
    const/16 v18, 0x2

    .line 302
    .local v18, "realpacketsize":I
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 303
    new-instance v21, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lc8/Hcq;I)V

    throw v21

    .line 304
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 305
    .local v6, "b1":B
    shr-int/lit8 v21, v6, 0x8

    if-eqz v21, :cond_1

    const/4 v4, 0x1

    .line 306
    .local v4, "FIN":Z
    :goto_0
    and-int/lit8 v21, v6, 0x7f

    shr-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v19, v0

    .line 307
    .local v19, "rsv":B
    if-eqz v19, :cond_2

    .line 308
    new-instance v21, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "bad rsv "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 305
    .end local v4    # "FIN":Z
    .end local v19    # "rsv":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 309
    .restart local v4    # "FIN":Z
    .restart local v19    # "rsv":B
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 310
    .local v7, "b2":B
    and-int/lit8 v21, v7, -0x80

    if-eqz v21, :cond_4

    const/4 v5, 0x1

    .line 311
    .local v5, "MASK":Z
    :goto_1
    and-int/lit8 v21, v7, 0x7f

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 312
    .local v17, "payloadlength":I
    and-int/lit8 v21, v6, 0xf

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lc8/Hcq;->toOpcode(B)Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v15

    .line 314
    .local v15, "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    if-nez v4, :cond_5

    .line 315
    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_3

    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_3

    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 316
    :cond_3
    new-instance v21, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string/jumbo v22, "control frames may no be fragmented"

    invoke-direct/range {v21 .. v22}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 310
    .end local v5    # "MASK":Z
    .end local v15    # "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    .end local v17    # "payloadlength":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 320
    .restart local v5    # "MASK":Z
    .restart local v15    # "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    .restart local v17    # "payloadlength":I
    :cond_5
    if-ltz v17, :cond_6

    const/16 v21, 0x7d

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 322
    :cond_6
    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_7

    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-eq v15, v0, :cond_7

    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_8

    .line 323
    :cond_7
    new-instance v21, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string/jumbo v22, "more than 125 octets"

    invoke-direct/range {v21 .. v22}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 325
    :cond_8
    const/16 v21, 0x7e

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 326
    add-int/lit8 v18, v18, 0x2

    .line 327
    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 328
    new-instance v21, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lc8/Hcq;I)V

    throw v21

    .line 329
    :cond_9
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 330
    .local v20, "sizebytes":[B
    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    aput-byte v22, v20, v21

    .line 331
    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    aput-byte v22, v20, v21

    .line 332
    new-instance v21, Ljava/math/BigInteger;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    .line 351
    .end local v20    # "sizebytes":[B
    :cond_a
    :goto_2
    if-eqz v5, :cond_f

    const/16 v21, 0x4

    :goto_3
    add-int v18, v18, v21

    .line 353
    add-int v18, v18, v17

    .line 355
    move/from16 v0, v18

    if-ge v14, v0, :cond_10

    .line 356
    new-instance v21, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lc8/Hcq;I)V

    throw v21

    .line 334
    :cond_b
    add-int/lit8 v18, v18, 0x8

    .line 335
    move/from16 v0, v18

    if-ge v14, v0, :cond_c

    .line 336
    new-instance v21, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lc8/Hcq;I)V

    throw v21

    .line 337
    :cond_c
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v8, v0, [B

    .line 338
    .local v8, "bytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v10, v0, :cond_d

    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    aput-byte v21, v8, v10

    .line 338
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 341
    :cond_d
    new-instance v21, Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    .line 342
    .local v12, "length":J
    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v12, v22

    if-lez v21, :cond_e

    .line 343
    new-instance v21, Lorg/java_websocket/exceptions/LimitExedeedException;

    const-string/jumbo v22, "Payloadsize is to big..."

    invoke-direct/range {v21 .. v22}, Lorg/java_websocket/exceptions/LimitExedeedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 345
    :cond_e
    long-to-int v0, v12

    move/from16 v17, v0

    goto :goto_2

    .line 351
    .end local v8    # "bytes":[B
    .end local v10    # "i":I
    .end local v12    # "length":J
    :cond_f
    const/16 v21, 0x0

    goto :goto_3

    .line 358
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/Hcq;->checkAlloc(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 359
    .local v16, "payload":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_11

    .line 360
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 361
    .local v11, "maskskey":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 362
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v10, v0, :cond_12

    .line 363
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    rem-int/lit8 v22, v10, 0x4

    aget-byte v22, v11, v22

    xor-int v21, v21, v22

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 362
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 366
    .end local v10    # "i":I
    .end local v11    # "maskskey":[B
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 367
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    :cond_12
    sget-object v21, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v21

    if-ne v15, v0, :cond_13

    .line 372
    new-instance v9, Lc8/Mcq;

    invoke-direct {v9}, Lc8/Mcq;-><init>()V

    .line 378
    .local v9, "frame":Lc8/Ncq;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lc8/Ncq;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 380
    return-object v9

    .line 374
    .end local v9    # "frame":Lc8/Ncq;
    :cond_13
    new-instance v9, Lc8/Pcq;

    invoke-direct {v9}, Lc8/Pcq;-><init>()V

    .line 375
    .restart local v9    # "frame":Lc8/Ncq;
    invoke-interface {v9, v4}, Lc8/Ncq;->setFin(Z)V

    .line 376
    invoke-interface {v9, v15}, Lc8/Ncq;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    goto :goto_6
.end method
