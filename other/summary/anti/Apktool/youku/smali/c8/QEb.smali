.class public Lc8/QEb;
.super Lc8/EFb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc8/EFb;-><init>()V

    const-string/jumbo v0, "mtop.alibaba.baichuan.auth.token.get"

    iput-object v0, p0, Lc8/QEb;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/QEb;->c:Z

    const v0, 0x15f90

    iput v0, p0, Lc8/QEb;->g:I

    return-void
.end method

.method private a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "hintArray"

    if-nez p1, :cond_1

    const-string/jumbo v0, "[]"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oldToken"

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lc8/nIb;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Set;Ljava/lang/String;Lc8/VFb;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lc8/QEb;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lc8/QEb;->a(Ljava/util/Map;Lc8/VFb;)Z

    move-result v0

    return v0
.end method
