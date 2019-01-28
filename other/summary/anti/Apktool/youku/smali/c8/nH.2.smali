.class public Lc8/nH;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLTunnelSocketFactory.java"


# instance fields
.field private dfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private tunnelHost:Ljava/lang/String;

.field private tunnelPort:I

.field private useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxyhost"    # Ljava/lang/String;
    .param p2, "proxyport"    # I
    .param p3, "socketfactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p4, "user_agent"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 45
    iput-object p1, p0, Lc8/nH;->tunnelHost:Ljava/lang/String;

    .line 46
    iput p2, p0, Lc8/nH;->tunnelPort:I

    .line 48
    if-eqz p3, :cond_0

    .line 49
    iput-object p3, p0, Lc8/nH;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    :goto_0
    iput-object p4, p0, Lc8/nH;->useragent:Ljava/lang/String;

    .line 53
    return-void

    .line 51
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lc8/nH;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method private doTunnelHandshake(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 15
    .param p1, "tunnel"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 95
    .local v7, "out":Ljava/io/OutputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CONNECT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " HTTP/1.1\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "User-Agent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/nH;->useragent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Host:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "msg":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v12, "ASCII7"

    invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .local v1, "b":[B
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 121
    const/16 v12, 0xc8

    new-array v8, v12, [B

    .line 122
    .local v8, "reply":[B
    const/4 v9, 0x0

    .line 123
    .local v9, "replyLen":I
    const/4 v6, 0x0

    .line 124
    .local v6, "newlinesSeen":I
    const/4 v2, 0x0

    .line 126
    .local v2, "headerDone":Z
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .local v4, "in":Ljava/io/InputStream;
    move v10, v9

    .line 128
    .end local v9    # "replyLen":I
    .local v10, "replyLen":I
    :goto_1
    const/4 v12, 0x2

    if-ge v6, v12, :cond_2

    .line 129
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 130
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 131
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Unexpected EOF from proxy"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 112
    .end local v1    # "b":[B
    .end local v2    # "headerDone":Z
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "newlinesSeen":I
    .end local v8    # "reply":[B
    .end local v10    # "replyLen":I
    :catch_0
    move-exception v12

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "b":[B
    goto :goto_0

    .line 133
    .restart local v2    # "headerDone":Z
    .restart local v3    # "i":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "newlinesSeen":I
    .restart local v8    # "reply":[B
    .restart local v10    # "replyLen":I
    :cond_0
    const/16 v12, 0xa

    if-ne v3, v12, :cond_1

    .line 134
    const/4 v2, 0x1

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    :cond_1
    const/16 v12, 0xd

    if-eq v3, v12, :cond_4

    .line 137
    const/4 v6, 0x0

    .line 138
    if-nez v2, :cond_4

    array-length v12, v8

    if-ge v10, v12, :cond_4

    .line 139
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "replyLen":I
    .restart local v9    # "replyLen":I
    int-to-byte v12, v3

    aput-byte v12, v8, v10

    :goto_2
    move v10, v9

    .line 142
    .end local v9    # "replyLen":I
    .restart local v10    # "replyLen":I
    goto :goto_1

    .line 151
    .end local v3    # "i":I
    :cond_2
    :try_start_1
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "ASCII7"

    invoke-direct {v11, v8, v12, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .local v11, "replyStr":Ljava/lang/String;
    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "200 connection established"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 158
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to tunnel through "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lc8/nH;->tunnelHost:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lc8/nH;->tunnelPort:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".  Proxy returns \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 153
    .end local v11    # "replyStr":Ljava/lang/String;
    :catch_1
    move-exception v12

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12, v10}, Ljava/lang/String;-><init>([BII)V

    .restart local v11    # "replyStr":Ljava/lang/String;
    goto :goto_3

    .line 162
    :cond_3
    return-void

    .end local v11    # "replyStr":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_4
    move v9, v10

    .end local v10    # "replyLen":I
    .restart local v9    # "replyLen":I
    goto :goto_2
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lc8/nH;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientHost"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lc8/nH;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lc8/nH;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lc8/nH;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 4
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lc8/nH;->tunnelHost:Ljava/lang/String;

    iget v3, p0, Lc8/nH;->tunnelPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 75
    .local v1, "tunnel":Ljava/net/Socket;
    invoke-direct {p0, v1, p2, p3}, Lc8/nH;->doTunnelHandshake(Ljava/net/Socket;Ljava/lang/String;I)V

    .line 77
    iget-object v2, p0, Lc8/nH;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 79
    .local v0, "result":Ljavax/net/ssl/SSLSocket;
    new-instance v2, Lc8/mH;

    invoke-direct {v2, p0}, Lc8/mH;-><init>(Lc8/nH;)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 88
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 90
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lc8/nH;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/nH;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
