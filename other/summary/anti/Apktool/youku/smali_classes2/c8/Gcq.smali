.class public abstract Lc8/Gcq;
.super Ljava/lang/Object;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft$CloseHandshakeType;,
        Lorg/java_websocket/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static final FLASH_POLICY_REQUEST:[B

.field public static INITIAL_FAMESIZE:I

.field public static MAX_FAME_SIZE:I


# instance fields
.field protected continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

.field protected role:Lorg/java_websocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x3e8

    sput v0, Lc8/Gcq;->MAX_FAME_SIZE:I

    .line 45
    const/16 v0, 0x40

    sput v0, Lc8/Gcq;->INITIAL_FAMESIZE:I

    .line 47
    const-string/jumbo v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lc8/jdq;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Gcq;->FLASH_POLICY_REQUEST:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lc8/Gcq;->role:Lorg/java_websocket/WebSocket$Role;

    .line 52
    iput-object v0, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 57
    .local v2, "sbuf":Ljava/nio/ByteBuffer;
    const/16 v0, 0x30

    .line 58
    .local v0, "cur":B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    move v1, v0

    .line 60
    .local v1, "prev":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 61
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 63
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    .end local v1    # "prev":B
    .end local v2    # "sbuf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v2

    .line 70
    .restart local v2    # "sbuf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 75
    invoke-static {p0}, Lc8/Gcq;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    .local v0, "b":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v1, v2, v3}, Lc8/jdq;->stringAscii([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocket$Role;)Lc8/Scq;
    .locals 12
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "role"    # Lorg/java_websocket/WebSocket$Role;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;,
            Lorg/java_websocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 82
    invoke-static {p0}, Lc8/Gcq;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 84
    new-instance v6, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit16 v7, v7, 0x80

    invoke-direct {v6, v7}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v6

    .line 86
    :cond_0
    const-string/jumbo v6, " "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "firstLineTokens":[Ljava/lang/String;
    array-length v6, v1

    if-eq v6, v7, :cond_1

    .line 88
    new-instance v6, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    invoke-direct {v6}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw v6

    .line 91
    :cond_1
    sget-object v6, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne p1, v6, :cond_2

    .line 93
    new-instance v2, Lc8/Ucq;

    invoke-direct {v2}, Lc8/Ucq;-><init>()V

    .local v2, "handshake":Lc8/Scq;
    move-object v5, v2

    .line 94
    check-cast v5, Lc8/Ycq;

    .line 95
    .local v5, "serverhandshake":Lc8/Ycq;
    aget-object v6, v1, v10

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-interface {v5, v6}, Lc8/Ycq;->setHttpStatus(S)V

    .line 96
    aget-object v6, v1, v11

    invoke-interface {v5, v6}, Lc8/Ycq;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 104
    .end local v5    # "serverhandshake":Lc8/Ycq;
    :goto_0
    invoke-static {p0}, Lc8/Gcq;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 105
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 106
    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "pair":[Ljava/lang/String;
    array-length v6, v4

    if-eq v6, v11, :cond_3

    .line 108
    new-instance v6, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string/jumbo v7, "not an http header"

    invoke-direct {v6, v7}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    .end local v2    # "handshake":Lc8/Scq;
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_2
    new-instance v0, Lc8/Tcq;

    invoke-direct {v0}, Lc8/Tcq;-><init>()V

    .line 100
    .local v0, "clienthandshake":Lc8/Rcq;
    aget-object v6, v1, v10

    invoke-interface {v0, v6}, Lc8/Rcq;->setResourceDescriptor(Ljava/lang/String;)V

    .line 101
    move-object v2, v0

    .restart local v2    # "handshake":Lc8/Scq;
    goto :goto_0

    .line 109
    .end local v0    # "clienthandshake":Lc8/Rcq;
    .restart local v4    # "pair":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-object v7, v4, v10

    const-string/jumbo v8, "^ +"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lc8/Scq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lc8/Gcq;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 111
    goto :goto_1

    .line 112
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 113
    new-instance v6, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v6}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v6

    .line 114
    :cond_5
    return-object v2
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lc8/Qcq;Lc8/Xcq;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lc8/Qcq;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method protected basicAccept(Lc8/Vcq;)Z
    .locals 2
    .param p1, "handshakedata"    # Lc8/Vcq;

    .prologue
    .line 122
    const-string/jumbo v0, "Upgrade"

    invoke-interface {p1, v0}, Lc8/Vcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Connection"

    invoke-interface {p1, v0}, Lc8/Vcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAlloc(I)I
    .locals 3
    .param p1, "bytecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExedeedException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 215
    if-gez p1, :cond_0

    .line 216
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return p1
.end method

.method public continuousFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 4
    .param p1, "op"    # Lorg/java_websocket/framing/Framedata$Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/framing/Framedata$Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lc8/Ocq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    iget-object v2, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eqz v2, :cond_1

    .line 137
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    iput-object v2, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    .line 142
    :goto_0
    new-instance v0, Lc8/Pcq;

    iget-object v2, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v2}, Lc8/Pcq;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 144
    .local v0, "bui":Lc8/Ncq;
    :try_start_0
    invoke-interface {v0, p2}, Lc8/Ncq;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {v0, p3}, Lc8/Ncq;->setFin(Z)V

    .line 149
    if-eqz p3, :cond_2

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    .line 154
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 139
    .end local v0    # "bui":Lc8/Ncq;
    :cond_1
    iput-object p1, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 145
    .restart local v0    # "bui":Lc8/Ncq;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 152
    .end local v1    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :cond_2
    iput-object p1, p0, Lc8/Gcq;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_1
.end method

.method public abstract copyInstance()Lc8/Gcq;
.end method

.method public abstract createBinaryFrame(Lc8/Ocq;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
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
.end method

.method public createHandshake(Lc8/Vcq;Lorg/java_websocket/WebSocket$Role;)Ljava/util/List;
    .locals 1
    .param p1, "handshakedata"    # Lc8/Vcq;
    .param p2, "ownrole"    # Lorg/java_websocket/WebSocket$Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vcq;",
            "Lorg/java_websocket/WebSocket$Role;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc8/Gcq;->createHandshake(Lc8/Vcq;Lorg/java_websocket/WebSocket$Role;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lc8/Vcq;Lorg/java_websocket/WebSocket$Role;Z)Ljava/util/List;
    .locals 9
    .param p1, "handshakedata"    # Lc8/Vcq;
    .param p2, "ownrole"    # Lorg/java_websocket/WebSocket$Role;
    .param p3, "withcontent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vcq;",
            "Lorg/java_websocket/WebSocket$Role;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x64

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, "bui":Ljava/lang/StringBuilder;
    instance-of v7, p1, Lc8/Qcq;

    if-eqz v7, :cond_0

    .line 166
    const-string/jumbo v7, "GET "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p1

    .line 167
    check-cast v7, Lc8/Qcq;

    invoke-interface {v7}, Lc8/Qcq;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v7, " HTTP/1.1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_0
    const-string/jumbo v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p1}, Lc8/Vcq;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v6

    .line 176
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "fieldname":Ljava/lang/String;
    invoke-interface {p1, v3}, Lc8/Vcq;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "fieldvalue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    .end local v3    # "fieldname":Ljava/lang/String;
    .end local v4    # "fieldvalue":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    instance-of v7, p1, Lc8/Xcq;

    if-eqz v7, :cond_1

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HTTP/1.1 101 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lc8/Xcq;

    invoke-interface {v7}, Lc8/Xcq;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unknow role"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/jdq;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 187
    .local v5, "httpheader":[B
    if-eqz p3, :cond_4

    invoke-interface {p1}, Lc8/Vcq;->getContent()[B

    move-result-object v2

    .line 188
    .local v2, "content":[B
    :goto_2
    if-nez v2, :cond_5

    const/4 v7, 0x0

    :goto_3
    array-length v8, v5

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 189
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 187
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "content":[B
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 188
    .restart local v2    # "content":[B
    :cond_5
    array-length v7, v2

    goto :goto_3
.end method

.method public abstract getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
.end method

.method public getRole()Lorg/java_websocket/WebSocket$Role;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lc8/Gcq;->role:Lorg/java_websocket/WebSocket$Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lc8/Rcq;)Lc8/Rcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lc8/Qcq;Lc8/Ycq;)Lc8/Scq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lorg/java_websocket/WebSocket$Role;)V
    .locals 0
    .param p1, "role"    # Lorg/java_websocket/WebSocket$Role;

    .prologue
    .line 221
    iput-object p1, p0, Lc8/Gcq;->role:Lorg/java_websocket/WebSocket$Role;

    .line 222
    return-void
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
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
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lc8/Vcq;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lc8/Gcq;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-static {p1, v0}, Lc8/Gcq;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocket$Role;)Lc8/Scq;

    move-result-object v0

    return-object v0
.end method
