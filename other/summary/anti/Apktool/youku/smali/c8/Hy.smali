.class public Lc8/Hy;
.super Ljava/lang/Object;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fy;,
        Lc8/Gy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs proxy(Ljava/lang/Object;Lc8/Gy;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "delegatee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lc8/Gy",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "handler":Lc8/Gy;, "Landroid/taobao/atlas/hack/Interception$InterceptionHandler<TT;>;"
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Lc8/Gy;->setDelegatee(Ljava/lang/Object;)V

    .line 281
    const-class v0, Lc8/Hy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static proxy(Ljava/lang/Object;Ljava/lang/Class;Lc8/Gy;)Ljava/lang/Object;
    .locals 4
    .param p0, "delegatee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/Gy",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lc8/Gy;, "Landroid/taobao/atlas/hack/Interception$InterceptionHandler<TT;>;"
    instance-of v0, p0, Lc8/Fy;

    if-eqz v0, :cond_0

    .line 274
    .end local p0    # "delegatee":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 273
    .restart local p0    # "delegatee":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, p0}, Lc8/Gy;->setDelegatee(Ljava/lang/Object;)V

    .line 274
    const-class v0, Lc8/Hy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-class v3, Lc8/Fy;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method
