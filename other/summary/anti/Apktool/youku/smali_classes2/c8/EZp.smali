.class public Lc8/EZp;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc8/KZp;

.field private final b:Lc8/QZp;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lc8/EZp;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc8/QZp;

    invoke-direct {v0}, Lc8/QZp;-><init>()V

    iput-object v0, p0, Lc8/EZp;->b:Lc8/QZp;

    iget-object v0, p0, Lc8/EZp;->b:Lc8/QZp;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lc8/RZp;)Lc8/KZp;

    move-result-object v0

    iput-object v0, p0, Lc8/EZp;->a:Lc8/KZp;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/a;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc8/EZp;->b:Lc8/QZp;

    invoke-virtual {v0, p2}, Lc8/QZp;->a([B)V

    iget-object v0, p0, Lc8/EZp;->a:Lc8/KZp;

    invoke-interface {p1, v0}, Lorg/apache/thrift/a;->a(Lc8/KZp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc8/EZp;->a:Lc8/KZp;

    invoke-virtual {v0}, Lc8/KZp;->x()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/EZp;->a:Lc8/KZp;

    invoke-virtual {v1}, Lc8/KZp;->x()V

    throw v0
.end method
