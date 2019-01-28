.class public Lcom/xiaomi/xmpush/thrift/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/xmpush/thrift/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/a",
        "<",
        "Lcom/xiaomi/xmpush/thrift/c;",
        "Lcom/xiaomi/xmpush/thrift/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/xmpush/thrift/c$a;",
            "Lorg/apache/thrift/meta_data/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lc8/NZp;

.field private static final o:Lc8/HZp;

.field private static final p:Lc8/HZp;

.field private static final q:Lc8/HZp;

.field private static final r:Lc8/HZp;

.field private static final s:Lc8/HZp;

.field private static final t:Lc8/HZp;

.field private static final u:Lc8/HZp;

.field private static final v:Lc8/HZp;

.field private static final w:Lc8/HZp;

.field private static final x:Lc8/HZp;

.field private static final y:Lc8/HZp;

.field private static final z:Lc8/HZp;


# instance fields
.field private A:Ljava/util/BitSet;

.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xd

    const/16 v6, 0x8

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lc8/NZp;

    const-string/jumbo v1, "PushMetaInfo"

    invoke-direct {v0, v1}, Lc8/NZp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->n:Lc8/NZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "id"

    invoke-direct {v0, v1, v7, v10}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->o:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "messageTs"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v8}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->p:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "topic"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->q:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "title"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->r:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "description"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->s:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "notifyType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->t:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "url"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->u:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "passThrough"

    invoke-direct {v0, v1, v6, v6}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->v:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "notifyId"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->w:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "extra"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v9, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->x:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "internal"

    invoke-direct {v0, v1, v9, v7}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->y:Lc8/HZp;

    new-instance v0, Lc8/HZp;

    const-string/jumbo v1, "ignoreRegInfo"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v8, v2}, Lc8/HZp;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->z:Lc8/HZp;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/c$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->a:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->b:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "messageTs"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->c:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->d:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "title"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->e:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "description"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->f:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "notifyType"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->g:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "url"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->h:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "passThrough"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->i:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "notifyId"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->j:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/e;

    new-instance v5, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/thrift/meta_data/e;-><init>(BLorg/apache/thrift/meta_data/c;Lorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->k:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "internal"

    new-instance v4, Lorg/apache/thrift/meta_data/e;

    new-instance v5, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/thrift/meta_data/e;-><init>(BLorg/apache/thrift/meta_data/c;Lorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c$a;->l:Lcom/xiaomi/xmpush/thrift/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string/jumbo v3, "ignoreRegInfo"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/c;->m:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/c;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/c;->m:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/xmpush/thrift/c;
    .locals 1

    iput p1, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/c;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lc8/KZp;)V
    .locals 10

    const/16 v9, 0xd

    const/4 v1, 0x0

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x1

    invoke-virtual {p1}, Lc8/KZp;->f()Lc8/NZp;

    :goto_0
    invoke-virtual {p1}, Lc8/KZp;->h()Lc8/HZp;

    move-result-object v0

    iget-byte v2, v0, Lc8/HZp;->b:B

    if-eqz v2, :cond_e

    iget-short v2, v0, Lc8/HZp;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    :goto_1
    invoke-virtual {p1}, Lc8/KZp;->i()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v7, :cond_0

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lc8/HZp;->b:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lc8/KZp;->t()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/c;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v7, :cond_2

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v7, :cond_3

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v8, :cond_5

    invoke-virtual {p1}, Lc8/KZp;->s()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/c;->b(Z)V

    goto/16 :goto_1

    :cond_5
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v7, :cond_6

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v8, :cond_7

    invoke-virtual {p1}, Lc8/KZp;->s()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/c;->c(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v8, :cond_8

    invoke-virtual {p1}, Lc8/KZp;->s()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/c;->d(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v9, :cond_a

    invoke-virtual {p1}, Lc8/KZp;->j()Lc8/JZp;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc8/JZp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lc8/JZp;->c:I

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lc8/KZp;->k()V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lc8/HZp;->b:B

    if-ne v2, v9, :cond_c

    invoke-virtual {p1}, Lc8/KZp;->j()Lc8/JZp;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc8/JZp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    move v0, v1

    :goto_3
    iget v3, v2, Lc8/JZp;->c:I

    if-ge v0, v3, :cond_b

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc8/KZp;->v()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lc8/KZp;->k()V

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v2, v0, Lc8/HZp;->b:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    invoke-virtual {p1}, Lc8/KZp;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/c;->e(Z)V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lc8/HZp;->b:B

    invoke-static {p1, v0}, Lc8/LZp;->a(Lc8/KZp;B)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lc8/KZp;->g()V

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->d()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lorg/apache/thrift/protocol/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->w()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/c;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/c;->f:I

    if-ne v1, v2, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/c;->h:I

    if-ne v1, v2, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    iget v2, p1, Lcom/xiaomi/xmpush/thrift/c;->i:I

    if-ne v1, v2, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    if-ne v1, v2, :cond_0

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/c;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/c;->b:J

    invoke-static {v0, v1, v2, v3}, Lc8/DZp;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/c;->f:I

    invoke-static {v0, v1}, Lc8/DZp;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/c;->h:I

    invoke-static {v0, v1}, Lc8/DZp;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    iget v1, p1, Lcom/xiaomi/xmpush/thrift/c;->i:I

    invoke-static {v0, v1}, Lc8/DZp;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lc8/DZp;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    invoke-static {v0, v1}, Lc8/DZp;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(I)Lcom/xiaomi/xmpush/thrift/c;
    .locals 1

    iput p1, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/c;->c(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lc8/KZp;)V
    .locals 4

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->w()V

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->n:Lc8/NZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/NZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->o:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->p:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    invoke-virtual {p1, v0, v1}, Lc8/KZp;->a(J)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->q:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->r:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->s:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->t:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    invoke-virtual {p1, v0}, Lc8/KZp;->a(I)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->u:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->v:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    invoke-virtual {p1, v0}, Lc8/KZp;->a(I)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->w:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    invoke-virtual {p1, v0}, Lc8/KZp;->a(I)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->x:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    new-instance v0, Lc8/JZp;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc8/JZp;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/JZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lc8/KZp;->d()V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->y:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    new-instance v0, Lc8/JZp;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc8/JZp;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/JZp;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc8/KZp;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lc8/KZp;->d()V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/xiaomi/xmpush/thrift/c;->z:Lc8/HZp;

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Lc8/HZp;)V

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    invoke-virtual {p1, v0}, Lc8/KZp;->a(Z)V

    invoke-virtual {p1}, Lc8/KZp;->b()V

    :cond_c
    invoke-virtual {p1}, Lc8/KZp;->c()V

    invoke-virtual {p1}, Lc8/KZp;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    return-wide v0
.end method

.method public c(I)Lcom/xiaomi/xmpush/thrift/c;
    .locals 1

    iput p1, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/c;->d(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/c;->b(Lcom/xiaomi/xmpush/thrift/c;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/c;->a(Lcom/xiaomi/xmpush/thrift/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    return v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    return v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    return v0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PushMetaInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "messageTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/c;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    if-nez v1, :cond_e

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "passThrough:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/xmpush/thrift/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    if-nez v1, :cond_f

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->t()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    if-nez v1, :cond_10

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->v()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ignoreRegInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_9
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_e
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_f
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/c;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/c;->l:Z

    return v0
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->A:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
