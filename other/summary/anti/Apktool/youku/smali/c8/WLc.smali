.class public final Lc8/WLc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc8/ELc;

.field private b:Lc8/YLc;


# direct methods
.method public constructor <init>(Lc8/ELc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/WLc;->a:Lc8/ELc;

    new-instance v0, Lc8/YLc;

    invoke-direct {v0, p0}, Lc8/YLc;-><init>(Lc8/WLc;)V

    iput-object v0, p0, Lc8/WLc;->b:Lc8/YLc;

    return-void
.end method


# virtual methods
.method public final a()Lc8/ELc;
    .locals 1

    iget-object v0, p0, Lc8/WLc;->a:Lc8/ELc;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lc8/XLc;

    iget-object v3, p0, Lc8/WLc;->a:Lc8/ELc;

    iget-object v4, p0, Lc8/WLc;->b:Lc8/YLc;

    invoke-direct {v2, v3, p1, v4}, Lc8/XLc;-><init>(Lc8/ELc;Ljava/lang/Class;Lc8/YLc;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
