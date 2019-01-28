.class public final Lc8/eSe;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final code:I

.field private final handshake:Lc8/DSe;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/squareup/okhttp/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lc8/GSe;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lc8/GSe;


# direct methods
.method public constructor <init>(Lc8/cTe;)V
    .locals 1
    .param p1, "response"    # Lc8/cTe;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->url:Ljava/lang/String;

    .line 568
    invoke-static {p1}, Lc8/UUe;->varyHeaders(Lc8/cTe;)Lc8/GSe;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    .line 569
    invoke-virtual {p1}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->requestMethod:Ljava/lang/String;

    .line 570
    invoke-virtual {p1}, Lc8/cTe;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 571
    invoke-virtual {p1}, Lc8/cTe;->code()I

    move-result v0

    iput v0, p0, Lc8/eSe;->code:I

    .line 572
    invoke-virtual {p1}, Lc8/cTe;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->message:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    .line 574
    invoke-virtual {p1}, Lc8/cTe;->handshake()Lc8/DSe;

    move-result-object v0

    iput-object v0, p0, Lc8/eSe;->handshake:Lc8/DSe;

    .line 575
    return-void
.end method

.method public constructor <init>(Lc8/uWp;)V
    .locals 14
    .param p1, "in"    # Lc8/uWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    :try_start_0
    invoke-static {p1}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v7

    .line 529
    .local v7, "source":Lc8/aWp;
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/eSe;->url:Ljava/lang/String;

    .line 530
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lc8/eSe;->requestMethod:Ljava/lang/String;

    .line 531
    new-instance v9, Lc8/FSe;

    invoke-direct {v9}, Lc8/FSe;-><init>()V

    .line 532
    .local v9, "varyHeadersBuilder":Lc8/FSe;
    invoke-static {v7}, Lc8/fSe;->access$1000(Lc8/aWp;)I

    move-result v10

    .line 533
    .local v10, "varyRequestHeaderLineCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 534
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lc8/FSe;->addLenient(Ljava/lang/String;)Lc8/FSe;

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {v9}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v11

    iput-object v11, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    .line 538
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/ZUe;->parse(Ljava/lang/String;)Lc8/ZUe;

    move-result-object v8

    .line 539
    .local v8, "statusLine":Lc8/ZUe;
    iget-object v11, v8, Lc8/ZUe;->protocol:Lcom/squareup/okhttp/Protocol;

    iput-object v11, p0, Lc8/eSe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 540
    iget v11, v8, Lc8/ZUe;->code:I

    iput v11, p0, Lc8/eSe;->code:I

    .line 541
    iget-object v11, v8, Lc8/ZUe;->message:Ljava/lang/String;

    iput-object v11, p0, Lc8/eSe;->message:Ljava/lang/String;

    .line 542
    new-instance v6, Lc8/FSe;

    invoke-direct {v6}, Lc8/FSe;-><init>()V

    .line 543
    .local v6, "responseHeadersBuilder":Lc8/FSe;
    invoke-static {v7}, Lc8/fSe;->access$1000(Lc8/aWp;)I

    move-result v5

    .line 544
    .local v5, "responseHeaderLineCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 545
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lc8/FSe;->addLenient(Ljava/lang/String;)Lc8/FSe;

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 547
    :cond_1
    invoke-virtual {v6}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v11

    iput-object v11, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    .line 549
    invoke-direct {p0}, Lc8/eSe;->isHttps()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 550
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 552
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "expected \"\" but was \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v0    # "blank":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "responseHeaderLineCount":I
    .end local v6    # "responseHeadersBuilder":Lc8/FSe;
    .end local v7    # "source":Lc8/aWp;
    .end local v8    # "statusLine":Lc8/ZUe;
    .end local v9    # "varyHeadersBuilder":Lc8/FSe;
    .end local v10    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v11

    invoke-interface {p1}, Lc8/uWp;->close()V

    throw v11

    .line 554
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "responseHeaderLineCount":I
    .restart local v6    # "responseHeadersBuilder":Lc8/FSe;
    .restart local v7    # "source":Lc8/aWp;
    .restart local v8    # "statusLine":Lc8/ZUe;
    .restart local v9    # "varyHeadersBuilder":Lc8/FSe;
    .restart local v10    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v7}, Lc8/eSe;->readCertificateList(Lc8/aWp;)Ljava/util/List;

    move-result-object v4

    .line 556
    .local v4, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v7}, Lc8/eSe;->readCertificateList(Lc8/aWp;)Ljava/util/List;

    move-result-object v3

    .line 557
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v1, v4, v3}, Lc8/DSe;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lc8/DSe;

    move-result-object v11

    iput-object v11, p0, Lc8/eSe;->handshake:Lc8/DSe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    invoke-interface {p1}, Lc8/uWp;->close()V

    .line 563
    return-void

    .line 559
    :cond_3
    const/4 v11, 0x0

    :try_start_2
    iput-object v11, p0, Lc8/eSe;->handshake:Lc8/DSe;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lc8/eSe;->url:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lc8/aWp;)Ljava/util/List;
    .locals 9
    .param p1, "source"    # Lc8/aWp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/aWp;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p1}, Lc8/fSe;->access$1000(Lc8/aWp;)I

    move-result v4

    .line 620
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 631
    :cond_0
    return-object v6

    .line 623
    :cond_1
    :try_start_0
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 624
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 626
    invoke-interface {p1}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    .line 628
    .local v0, "bytes":Lc8/YVp;
    invoke-static {v5}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc8/YVp;->write(Lokio/ByteString;)Lc8/YVp;

    .line 629
    invoke-virtual {v0}, Lc8/YVp;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "bytes":Lc8/YVp;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertList(Lc8/ZVp;Ljava/util/List;)V
    .locals 8
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ZVp;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v6, v7}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    .line 641
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 642
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 643
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 644
    .local v0, "bytes":[B
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 646
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lc8/VSe;Lc8/cTe;)Z
    .locals 2
    .param p1, "request"    # Lc8/VSe;
    .param p2, "response"    # Lc8/cTe;

    .prologue
    .line 654
    iget-object v0, p0, Lc8/eSe;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eSe;->requestMethod:Ljava/lang/String;

    .line 655
    invoke-virtual {p1}, Lc8/VSe;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    .line 656
    invoke-static {p2, v0, p1}, Lc8/UUe;->varyMatches(Lc8/cTe;Lc8/GSe;Lc8/VSe;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response(Lc8/VSe;Lc8/mTe;)Lc8/cTe;
    .locals 6
    .param p1, "request"    # Lc8/VSe;
    .param p2, "snapshot"    # Lc8/mTe;

    .prologue
    .line 660
    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3, v4}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v3, v4}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lc8/USe;

    invoke-direct {v3}, Lc8/USe;-><init>()V

    iget-object v4, p0, Lc8/eSe;->url:Ljava/lang/String;

    .line 663
    invoke-virtual {v3, v4}, Lc8/USe;->url(Ljava/lang/String;)Lc8/USe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->requestMethod:Ljava/lang/String;

    const/4 v5, 0x0

    .line 664
    invoke-virtual {v3, v4, v5}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    .line 665
    invoke-virtual {v3, v4}, Lc8/USe;->headers(Lc8/GSe;)Lc8/USe;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v0

    .line 667
    .local v0, "cacheRequest":Lc8/VSe;
    new-instance v3, Lc8/bTe;

    invoke-direct {v3}, Lc8/bTe;-><init>()V

    .line 668
    invoke-virtual {v3, v0}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 669
    invoke-virtual {v3, v4}, Lc8/bTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;

    move-result-object v3

    iget v4, p0, Lc8/eSe;->code:I

    .line 670
    invoke-virtual {v3, v4}, Lc8/bTe;->code(I)Lc8/bTe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->message:Ljava/lang/String;

    .line 671
    invoke-virtual {v3, v4}, Lc8/bTe;->message(Ljava/lang/String;)Lc8/bTe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    .line 672
    invoke-virtual {v3, v4}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v3

    new-instance v4, Lc8/dSe;

    invoke-direct {v4, p2, v2, v1}, Lc8/dSe;-><init>(Lc8/mTe;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v3, v4}, Lc8/bTe;->body(Lc8/dTe;)Lc8/bTe;

    move-result-object v3

    iget-object v4, p0, Lc8/eSe;->handshake:Lc8/DSe;

    .line 674
    invoke-virtual {v3, v4}, Lc8/bTe;->handshake(Lc8/DSe;)Lc8/bTe;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(Lc8/kTe;)V
    .locals 8
    .param p1, "editor"    # Lc8/kTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 578
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lc8/kTe;->newSink(I)Lc8/tWp;

    move-result-object v3

    invoke-static {v3}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v1

    .line 580
    .local v1, "sink":Lc8/ZVp;
    iget-object v3, p0, Lc8/eSe;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 581
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 582
    iget-object v3, p0, Lc8/eSe;->requestMethod:Ljava/lang/String;

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 583
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 584
    iget-object v3, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    invoke-virtual {v3}, Lc8/GSe;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    .line 585
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    invoke-virtual {v3}, Lc8/GSe;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 587
    iget-object v3, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    invoke-virtual {v3, v0}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 588
    const-string/jumbo v3, ": "

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 589
    iget-object v3, p0, Lc8/eSe;->varyHeaders:Lc8/GSe;

    invoke-virtual {v3, v0}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 590
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance v3, Lc8/ZUe;

    iget-object v4, p0, Lc8/eSe;->protocol:Lcom/squareup/okhttp/Protocol;

    iget v5, p0, Lc8/eSe;->code:I

    iget-object v6, p0, Lc8/eSe;->message:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lc8/ZUe;-><init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v3}, Lc8/ZUe;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 594
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 595
    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    invoke-virtual {v3}, Lc8/GSe;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    .line 596
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 597
    const/4 v0, 0x0

    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    invoke-virtual {v3}, Lc8/GSe;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 598
    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    invoke-virtual {v3, v0}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 599
    const-string/jumbo v3, ": "

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 600
    iget-object v3, p0, Lc8/eSe;->responseHeaders:Lc8/GSe;

    invoke-virtual {v3, v0}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 601
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_1
    invoke-direct {p0}, Lc8/eSe;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 606
    iget-object v3, p0, Lc8/eSe;->handshake:Lc8/DSe;

    invoke-virtual {v3}, Lc8/DSe;->cipherSuite()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 607
    invoke-interface {v1, v7}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 608
    iget-object v3, p0, Lc8/eSe;->handshake:Lc8/DSe;

    invoke-virtual {v3}, Lc8/DSe;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lc8/eSe;->writeCertList(Lc8/ZVp;Ljava/util/List;)V

    .line 609
    iget-object v3, p0, Lc8/eSe;->handshake:Lc8/DSe;

    invoke-virtual {v3}, Lc8/DSe;->localCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lc8/eSe;->writeCertList(Lc8/ZVp;Ljava/util/List;)V

    .line 611
    :cond_2
    invoke-interface {v1}, Lc8/ZVp;->close()V

    .line 612
    return-void
.end method
