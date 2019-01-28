.class public Lc8/eof;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackedClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    .line 46
    return-void
.end method


# virtual methods
.method public constructor([Ljava/lang/Class;)Lc8/fof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/fof;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    .local p1, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/fof;

    iget-object v1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lc8/fof;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public field(Ljava/lang/String;)Lc8/gof;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/gof",
            "<TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    new-instance v0, Lc8/gof;

    iget-object v1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lc8/gof;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getmClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    iget-object v0, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/hof;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/hof;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    .local p2, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/hof;

    iget-object v1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lc8/hof;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method

.method public staticField(Ljava/lang/String;)Lc8/gof;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/gof",
            "<TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    new-instance v0, Lc8/gof;

    iget-object v1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, v2}, Lc8/gof;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lc8/hof;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/hof;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/eof;, "Lcom/taobao/flowcustoms/hack/Hack$HackedClass<TC;>;"
    .local p2, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lc8/hof;

    iget-object v1, p0, Lc8/eof;->mClass:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, p2, v2}, Lc8/hof;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method
