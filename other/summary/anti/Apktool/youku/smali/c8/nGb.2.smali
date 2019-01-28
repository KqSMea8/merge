.class public Lc8/nGb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;-><init>()V

    iput-object v0, p0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc8/nGb;
    .locals 2

    new-instance v0, Lc8/nGb;

    invoke-direct {v0}, Lc8/nGb;-><init>()V

    iget-object v1, v0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iput-object p0, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lc8/nGb;
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;-><init>()V

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    iget-object v1, p0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/nGb;
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;-><init>()V

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->d:Ljava/lang/String;

    iput-object p3, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->e:[Ljava/lang/String;

    iput-object p4, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    iget-object v1, p0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->m:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a([I)Lc8/nGb;
    .locals 1

    iget-object v0, p0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->g:[I

    return-object p0
.end method

.method public a()Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lc8/nGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;

    return-object v0
.end method
