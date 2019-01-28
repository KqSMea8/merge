.class public Lc8/PUe;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lc8/KSe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lc8/VSe;

.field final synthetic this$0:Lc8/QUe;


# direct methods
.method constructor <init>(Lc8/QUe;ILc8/VSe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/QUe;
    .param p2, "index"    # I
    .param p3, "request"    # Lc8/VSe;

    .prologue
    .line 657
    iput-object p1, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p2, p0, Lc8/PUe;->index:I

    .line 659
    iput-object p3, p0, Lc8/PUe;->request:Lc8/VSe;

    .line 660
    return-void
.end method


# virtual methods
.method public connection()Lc8/sSe;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lc8/PUe;->this$0:Lc8/QUe;

    iget-object v0, v0, Lc8/QUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->connection()Lc8/gVe;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lc8/VSe;)Lc8/cTe;
    .locals 14
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 671
    iget v9, p0, Lc8/PUe;->calls:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lc8/PUe;->calls:I

    .line 673
    iget v9, p0, Lc8/PUe;->index:I

    if-lez v9, :cond_2

    .line 674
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    iget-object v9, v9, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v9}, Lc8/QSe;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lc8/PUe;->index:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/LSe;

    .line 675
    .local v2, "caller":Lc8/LSe;
    invoke-virtual {p0}, Lc8/PUe;->connection()Lc8/sSe;

    move-result-object v9

    invoke-interface {v9}, Lc8/sSe;->getRoute()Lc8/eTe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v0

    .line 678
    .local v0, "address":Lc8/XRe;
    invoke-virtual {p1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 679
    invoke-virtual {p1}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/JSe;->port()I

    move-result v9

    invoke-virtual {v0}, Lc8/XRe;->getUriPort()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 680
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must retain the same host and port"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 685
    :cond_1
    iget v9, p0, Lc8/PUe;->calls:I

    if-le v9, v11, :cond_2

    .line 686
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 691
    .end local v0    # "address":Lc8/XRe;
    .end local v2    # "caller":Lc8/LSe;
    :cond_2
    iget v9, p0, Lc8/PUe;->index:I

    iget-object v10, p0, Lc8/PUe;->this$0:Lc8/QUe;

    iget-object v10, v10, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v10}, Lc8/QSe;->networkInterceptors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 693
    new-instance v3, Lc8/PUe;

    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    iget v10, p0, Lc8/PUe;->index:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v3, v9, v10, p1}, Lc8/PUe;-><init>(Lc8/QUe;ILc8/VSe;)V

    .line 694
    .local v3, "chain":Lc8/PUe;
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    iget-object v9, v9, Lc8/QUe;->client:Lc8/QSe;

    invoke-virtual {v9}, Lc8/QSe;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lc8/PUe;->index:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/LSe;

    .line 695
    .local v6, "interceptor":Lc8/LSe;
    invoke-interface {v6, v3}, Lc8/LSe;->intercept(Lc8/KSe;)Lc8/cTe;

    move-result-object v5

    .line 698
    .local v5, "interceptedResponse":Lc8/cTe;
    iget v9, v3, Lc8/PUe;->calls:I

    if-eq v9, v11, :cond_3

    .line 699
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 702
    :cond_3
    if-nez v5, :cond_8

    .line 703
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 710
    .end local v3    # "chain":Lc8/PUe;
    .end local v5    # "interceptedResponse":Lc8/cTe;
    .end local v6    # "interceptor":Lc8/LSe;
    :cond_4
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-static {v9}, Lc8/QUe;->access$000(Lc8/QUe;)Lc8/SUe;

    move-result-object v9

    invoke-interface {v9, p1}, Lc8/SUe;->writeRequestHeaders(Lc8/VSe;)V

    .line 713
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-static {v9, p1}, Lc8/QUe;->access$102(Lc8/QUe;Lc8/VSe;)Lc8/VSe;

    .line 715
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-virtual {v9, p1}, Lc8/QUe;->permitsRequestBody(Lc8/VSe;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lc8/VSe;->body()Lc8/ZSe;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 716
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-static {v9}, Lc8/QUe;->access$000(Lc8/QUe;)Lc8/SUe;

    move-result-object v9

    invoke-virtual {p1}, Lc8/VSe;->body()Lc8/ZSe;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ZSe;->contentLength()J

    move-result-wide v10

    invoke-interface {v9, p1, v10, v11}, Lc8/SUe;->createRequestBody(Lc8/VSe;J)Lc8/tWp;

    move-result-object v7

    .line 717
    .local v7, "requestBodyOut":Lc8/tWp;
    invoke-static {v7}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v1

    .line 718
    .local v1, "bufferedRequestBody":Lc8/ZVp;
    invoke-virtual {p1}, Lc8/VSe;->body()Lc8/ZSe;

    move-result-object v9

    invoke-virtual {v9, v1}, Lc8/ZSe;->writeTo(Lc8/ZVp;)V

    .line 719
    invoke-interface {v1}, Lc8/ZVp;->close()V

    .line 722
    .end local v1    # "bufferedRequestBody":Lc8/ZVp;
    .end local v7    # "requestBodyOut":Lc8/tWp;
    :cond_5
    iget-object v9, p0, Lc8/PUe;->this$0:Lc8/QUe;

    invoke-static {v9}, Lc8/QUe;->access$200(Lc8/QUe;)Lc8/cTe;

    move-result-object v8

    .line 724
    .local v8, "response":Lc8/cTe;
    invoke-virtual {v8}, Lc8/cTe;->code()I

    move-result v4

    .line 725
    .local v4, "code":I
    const/16 v9, 0xcc

    if-eq v4, v9, :cond_6

    const/16 v9, 0xcd

    if-ne v4, v9, :cond_7

    :cond_6
    invoke-virtual {v8}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/dTe;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 726
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 727
    invoke-virtual {v8}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v11

    invoke-virtual {v11}, Lc8/dTe;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    move-object v5, v8

    .line 730
    .end local v4    # "code":I
    .end local v8    # "response":Lc8/cTe;
    :cond_8
    return-object v5
.end method

.method public request()Lc8/VSe;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lc8/PUe;->request:Lc8/VSe;

    return-object v0
.end method
