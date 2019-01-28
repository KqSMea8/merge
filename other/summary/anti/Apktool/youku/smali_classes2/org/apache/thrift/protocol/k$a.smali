.class public Lorg/apache/thrift/protocol/k$a;
.super Lorg/apache/thrift/protocol/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OZp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/a$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/thrift/protocol/a$a;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public a(Lc8/RZp;)Lc8/KZp;
    .locals 3

    new-instance v0, Lc8/OZp;

    iget-boolean v1, p0, Lorg/apache/thrift/protocol/k$a;->a:Z

    iget-boolean v2, p0, Lorg/apache/thrift/protocol/k$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lc8/OZp;-><init>(Lc8/RZp;ZZ)V

    iget v1, p0, Lorg/apache/thrift/protocol/k$a;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/thrift/protocol/k$a;->c:I

    invoke-virtual {v0, v1}, Lc8/GZp;->c(I)V

    :cond_0
    return-object v0
.end method
