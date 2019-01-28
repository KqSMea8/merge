.class public Lc8/tGb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;-><init>()V

    iput-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc8/tGb;
    .locals 2

    new-instance v0, Lc8/tGb;

    invoke-direct {v0}, Lc8/tGb;-><init>()V

    iget-object v1, v0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iput-object p0, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lc8/rGb;)Lc8/tGb;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->j:Lc8/rGb;

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->i:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lc8/tGb;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;-><init>()V

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->d:Ljava/lang/String;

    iput-object p3, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->e:[Ljava/lang/String;

    iput-object p4, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    iget-object v1, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lc8/tGb;
    .locals 1

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iput-boolean p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->l:Z

    return-object p0
.end method

.method public a([I)Lc8/tGb;
    .locals 1

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->g:[I

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lc8/tGb;
    .locals 1

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lc8/tGb;->a:Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    return-object v0
.end method
