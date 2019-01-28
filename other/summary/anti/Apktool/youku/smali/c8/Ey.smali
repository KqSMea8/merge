.class public Lc8/Ey;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ay;,
        Lc8/By;,
        Lc8/Dy;,
        Lc8/Cy;,
        Lc8/yy;,
        Lc8/zy;
    }
.end annotation


# static fields
.field private static sFailureHandler:Lc8/yy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V
    .locals 0
    .param p0, "x0"    # Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lc8/Ey;->fail(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    return-void
.end method

.method private static fail(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V
    .locals 1
    .param p0, "e"    # Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lc8/Ey;->sFailureHandler:Lc8/yy;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Ey;->sFailureHandler:Lc8/yy;

    invoke-interface {v0, p0}, Lc8/yy;->onAssertionFailure(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    throw p0

    .line 498
    :cond_1
    return-void
.end method

.method public static into(Ljava/lang/Class;)Lc8/Ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Ay",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lc8/Ay;

    invoke-direct {v0, p0}, Lc8/Ay;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static into(Ljava/lang/String;)Lc8/Ay;
    .locals 3
    .param p0, "class_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Ay",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 489
    :try_start_0
    new-instance v1, Lc8/Ay;

    invoke-static {p0}, Lc8/Ey;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Ay;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v1, v0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1}, Lc8/Ey;->fail(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    .line 492
    new-instance v1, Lc8/Ay;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc8/Ay;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static setAssertionFailureHandler(Lc8/yy;)V
    .locals 0
    .param p0, "handler"    # Lc8/yy;

    .prologue
    .line 502
    sput-object p0, Lc8/Ey;->sFailureHandler:Lc8/yy;

    .line 503
    return-void
.end method
