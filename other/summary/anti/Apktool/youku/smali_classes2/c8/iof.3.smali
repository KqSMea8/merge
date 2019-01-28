.class public Lc8/iof;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dof;,
        Lc8/gof;,
        Lc8/hof;,
        Lc8/fof;,
        Lc8/eof;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
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

.method public static into(Ljava/lang/Class;)Lc8/eof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/eof",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lc8/eof;

    invoke-direct {v0, p0}, Lc8/eof;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static into(Ljava/lang/String;)Lc8/eof;
    .locals 3
    .param p0, "class_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lc8/eof",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    new-instance v1, Lc8/eof;

    invoke-static {p0}, Lc8/iof;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/eof;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v1, v0}, Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
