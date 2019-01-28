.class public Lc8/FZp;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lc8/PZp;

.field private c:Lc8/KZp;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lc8/FZp;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lc8/FZp;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lc8/PZp;

    iget-object v1, p0, Lc8/FZp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lc8/PZp;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lc8/FZp;->b:Lc8/PZp;

    iget-object v0, p0, Lc8/FZp;->b:Lc8/PZp;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lc8/RZp;)Lc8/KZp;

    move-result-object v0

    iput-object v0, p0, Lc8/FZp;->c:Lc8/KZp;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/a;)[B
    .locals 1

    iget-object v0, p0, Lc8/FZp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lc8/FZp;->c:Lc8/KZp;

    invoke-interface {p1, v0}, Lorg/apache/thrift/a;->b(Lc8/KZp;)V

    iget-object v0, p0, Lc8/FZp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
