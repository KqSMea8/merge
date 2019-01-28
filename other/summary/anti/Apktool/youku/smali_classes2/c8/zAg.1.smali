.class public Lc8/zAg;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/apache/thrift/a;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/thrift/d;

    const-string/jumbo v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lc8/EZp;

    new-instance v1, Lorg/apache/thrift/protocol/k$a;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lc8/EZp;-><init>(Lorg/apache/thrift/protocol/g;)V

    invoke-virtual {v0, p0, p1}, Lc8/EZp;->a(Lorg/apache/thrift/a;[B)V

    return-void
.end method

.method public static a(Lorg/apache/thrift/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lc8/FZp;

    new-instance v2, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {v1, v2}, Lc8/FZp;-><init>(Lorg/apache/thrift/protocol/g;)V

    invoke-virtual {v1, p0}, Lc8/FZp;->a(Lorg/apache/thrift/a;)[B
    :try_end_0
    .catch Lorg/apache/thrift/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lc8/Hzg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
